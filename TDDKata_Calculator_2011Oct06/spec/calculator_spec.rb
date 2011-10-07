require "rspec"
require "../calculator.rb"

describe "Calculator" do
  describe "Add" do
    it("should return 0 for empty string input") do
      sut = Calculator.new
      result = sut.add ""
      result.should equal 0
    end

    it("should return equivalent for single number string input") do
      sut = Calculator.new
      result = sut.add "4"
      result.should equal 4
    end

    it("should return sum for 2 comma-delimited string input") do
      sut = Calculator.new
      result = sut.add "4,5"
      result.should equal 9
    end

    it("should return sum for any length comma-delimited string input") do
      how_many = rand(999)
      numbers_to_add = ""
      expected = 0
      (0..how_many).each do |i|
        numbers_to_add += i.to_s + ","
        expected += i
      end
      sut = Calculator.new
      result = sut.add numbers_to_add
      result.should equal expected
    end

    it("should return sum for newline-delimited string input") do
      sut = Calculator.new
      result = sut.add "4,5\n3"
      result.should equal 12
    end

    it("should reject multiple delimiters") do
      expect {
        sut = Calculator.new
        result = sut.add "4,5\n,3"
      }.should raise_error ArgumentError, "Multiple delimiters are not allowed"
    end

    it("should return sum for custom delimiter string input") do
      sut = Calculator.new
      result = sut.add "//%\n4,5\n3%3"
      result.should equal 15
    end

  end
end
