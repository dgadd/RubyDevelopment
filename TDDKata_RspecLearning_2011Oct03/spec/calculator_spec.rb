require "rspec"
require "../calculator.rb"

describe Calculator do
  context "when adding a string of numbers" do
    before :each do
      @sut = Calculator.new
    end

    it "should return zero for empty string" do
      result = @sut.add("")
      result.should equal 0
    end
  end
end