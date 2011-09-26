require "rspec"
require "../calculator"

describe "My Calculator's add method'" do

  it "should return 0 for a zero-length string input" do
    sut = Calculator.new
    result = sut.add("")
    result.should equal 0
  end

  it "should return equivalent numeric for a one-length string input" do
    sut = Calculator.new
    result = sut.add("3")
    result.should equal 3
  end

  it "should return sum for a two-length with comma string input" do
    sut = Calculator.new
    result = sut.add("3,5")
    result.should equal 8
  end

end