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

  it "should return sum for a any length comma-delimited string input" do
    how_many = rand(999)
    numbers_to_add = ""
    expected = 0
    (1..how_many).each { | i | numbers_to_add += i.to_s + ","; expected += i;  }
    sut = Calculator.new
    result = sut.add numbers_to_add
    result.should equal expected
  end

  it "should return sum for a newline delimited input" do
    sut = Calculator.new
    result = sut.add "3,5\n3"
    result.should equal 11
  end

  it "should reject multiple delimiters" do
    lambda {
      sut = Calculator.new
      sut.add "3,5\n,3"
    }.should raise_exception(ArgumentError, "You cannot use multiple delimiters.")
  end

  it "should return sum for a custom delimited input" do
    sut = Calculator.new
    result = sut.add "//%\n3,5\n3%8"
    result.should equal 19
  end

end