require "rspec"
require "../calculator.rb"
describe "Calculator Add method" do

  it "should return 0 for a zero-length input param" do
    sut = Calculator.new
    result = sut.add("")
    result.should equal 0
  end

  it "should return equivalent number for a one-length input param" do
    sut = Calculator.new
    result = sut.add("4")
    result.should equal 4
  end

  it "should return sum for a two-length comma-delimited input param" do
    sut = Calculator.new
    result = sut.add("4,5")
    result.should equal 9
  end

  it "should return sum for a any-length comma-delimited input param" do
    how_many = rand(999)
    numbers_to_add = ""
    expected = 0
    (1..how_many).each do |i|
      numbers_to_add += i.to_s + ','
      expected += i
    end
    sut = Calculator.new
    result = sut.add(numbers_to_add)
    result.should equal expected
  end

  it "should handle new-line delimiters as part of comma-delimited input params" do
    sut = Calculator.new
    result = sut.add("4,5\n8")
    result.should equal 17
  end

  it "should reject multiple delimiter input, whether comma or newline" do
    lambda {
      sut = Calculator.new
      result = sut.add("4,5\n,8")
    }.should raise_exception(ArgumentError, "Multiple delimiters not allowed.")
  end

  it "should handle custom delimiters as part of comma-delimited input params" do
    sut = Calculator.new
    result = sut.add("//%\n4,5\n8%5")
    result.should equal 22
  end

  it "should reject negative numbers and list them in the error message" do
    lambda {
      sut = Calculator.new
      result = sut.add("4,5\n8,-3,-7")
    }.should raise_exception(ArgumentError, "Negative numbers not allowed: -3,-7,")
  end


end