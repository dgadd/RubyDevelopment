require "rspec"
require "../user.rb"

describe User do
  context "with no roles assigned" do

    it "is not allowed to access protected content" do
      true
    end

    it "demonstrates an rspec return true" do
      pending "SFP-28" do
        [].should equal 35
      end
    end

  end

end