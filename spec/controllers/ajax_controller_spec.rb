require 'spec_helper'

describe AjaxController do

  describe "GET 'rooms'" do
    it "returns http success" do
      get 'rooms'
      response.should be_success
    end
  end

end
