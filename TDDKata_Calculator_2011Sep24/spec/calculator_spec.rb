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

  it "should return sum for a two-length with comma-separated input" do
    sut = Calculator.new
    result = sut.add("3,5")
    result.should equal 8
  end

  it "should return sum for a any-length with comma-delimited input" do
    how_many = rand(999)
    numbers_to_add = ''
    expected = 0
    (1..how_many).each do |i|
      numbers_to_add += i.to_s + ','
      expected += i
    end
    sut = Calculator.new
    result = sut.add(numbers_to_add)
    result.should equal expected
  end

  it "should return sum for a comma and/or newline-separated input" do
    sut = Calculator.new
    result = sut.add("3,5\n8")
    result.should equal 16
  end


end