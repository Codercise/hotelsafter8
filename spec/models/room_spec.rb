require 'spec_helper'

describe Room do
  it should { belong_to(:hotel) }


  # it "shouldn't be valid without a hotel" do
  # 	FactoryGirl.build(:room, hotel: nil).should_not be_valid
  # end

  # it "shouldn't be valid without a description" do
  # 	FactoryGirl.build(:room, description: nil).should_not be_valid
  # end

  it "shouldn't be valid without bed choice" do
  	FactoryGirl.build(:room, beds: nil).should_not be_valid
  end

end
