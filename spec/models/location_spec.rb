require 'spec_helper'

describe Location do
  it "has a valid factory" do
    FactoryGirl.create(:location).should be_valid
  end

  it "is invalid without a city" do 
  	FactoryGirl.build(:location, city: nil).should_not be_valid
  end

  it "is invalid without a state" do 
  	FactoryGirl.build(:location, state: nil).should_not be_valid
  end
end
