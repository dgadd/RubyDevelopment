require "rspec"
require "../calculator"

describe "Calculator Adds" do

  it "should return 0 for a zero-length input" do
    sut = Calculator.new
    result = sut.add ""
    result.should equal 0
  end

  it "should return equivalent number for a single-length input" do
    sut = Calculator.new
    result = sut.add "3"
    result.should equal 3
  end

  it "should return sum for a comma-delimited 2 string input" do
    sut = Calculator.new
    result = sut.add "3,5"
    result.should equal 8
  end

end