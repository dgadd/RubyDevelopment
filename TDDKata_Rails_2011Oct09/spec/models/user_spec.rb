require 'spec_helper'

describe User do

  before(:each) do
    @attr = {:name => "Example User", :email => "user@example.com"}
  end

  it "should create a new instance given valid attributes" do
    User.create!(@attr)
  end

  it "should require a name" do
    user_without_a_name = User.new(@attr.merge(:name => ""))
    user_without_a_name.should_not be_valid
  end

  it "should require an email address" do
    user_without_an_email_address = User.new(@attr.merge(:email => ""))
    user_without_an_email_address.should_not be_valid
  end

end
