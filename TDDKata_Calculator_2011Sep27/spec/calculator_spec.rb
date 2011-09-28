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

end