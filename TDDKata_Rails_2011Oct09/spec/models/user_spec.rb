# These tests are being created based on the instructions in the Ruby on Rails Tutorial site, located here:
# http://ruby.railstutorial.org/chapters/modeling-and-viewing-users-one

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

  it "should reject names that are too long" do
    long_name = "a" * 51
    user_with_a_long_name = User.new(@attr.merge(:name => long_name))
    user_with_a_long_name.should_not be_valid
  end

  it "should accept valid email addresses" do
    addresses = %w[user@foo.com THE_USER@foo.bar.org first.last@foo.jp]
    addresses.each do |address|
      valid_email_user = User.new(@attr.merge(:email => address))
      valid_email_user.should be_valid
    end
  end

  it "should reject invalid email addresses" do
    addresses = %w[user@foo,com user_at_foo.org example.user@foo.]
    addresses.each do |address|
      invalid_email_user = User.new(@attr.merge(:email => address))
      invalid_email_user.should_not be_valid
    end
  end

  it "should reject duplicate email addresses" do
    # Put a user with given email address into the database.
    User.create!(@attr)
    user_with_duplicate_email = User.new(@attr)
    user_with_duplicate_email.should_not be_valid
  end

  it "should reject email addresses identical up to case" do
    upcased_email = @attr[:email].upcase
    User.create!(@attr.merge(:email => upcased_email))
    user_with_duplicate_email = User.new(@attr)
    user_with_duplicate_email.should_not be_valid
  end

end
