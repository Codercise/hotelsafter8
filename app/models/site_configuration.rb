class SiteConfiguration < ActiveRecord::Base
  serialize :value
 
  class_attribute :settings
  self.settings = []
 
  def self.ensure_created
    self.settings.each do |setting|
      self.send(setting)
    end
  end
 
  def self.setting(name, default, form_type, form_collection_command="")
    class_eval <<-EOC
      self.settings << "#{name}"
      def self.#{name}
        @#{name} ||= self.find_or_create_by_key("#{name}", value: #{default}, form_type: "#{form_type}", form_collection_command: "#{form_collection_command}").value
      end
      def self.#{name}=(value)
        record = self.find_or_create_by_key("#{name}", value: #{default}, form_type: "#{form_type}", form_collection_command: "#{form_collection_command}")
        record.value = value
        record.save!
        @#{name} = value
      end
    EOC
  end
 
  # Define settings by listing them here
  setting :site_name, "'Hotels after 8'", :string
  setting :admin_email, "'michael@brandycontent.com'", :string

  # Ensure all the defaults are created when the class file is read
  #self.ensure_created
end