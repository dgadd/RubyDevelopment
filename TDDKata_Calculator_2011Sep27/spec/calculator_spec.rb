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

  it "should handle new-lines as part of comma-delimited input params" do
    sut = Calculator.new
    result = sut.add("4,5\n8")
    result.should equal 17
  end

end