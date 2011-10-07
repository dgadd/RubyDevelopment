require "rspec"
require "../calculator.rb"

describe "Calculator" do
  describe "Add" do
    it("should return 0 for empty string input") do
      sut = Calculator.new
      result = sut.add ""
      result.should equal 0
    end
  end
end
