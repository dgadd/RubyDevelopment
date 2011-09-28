require "rspec"
require "../calculator.rb"
describe "Calculator Add method" do

  it "should return 0 for a zero-length input param" do
    sut = Calculator.new
    result = sut.add("")
    result.should equal 0
  end

end