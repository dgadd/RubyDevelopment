require "rspec"
require "../calculator.rb"

describe Calculator do
  context "when adding any empty value" do
    before :each do
      @sut = Calculator.new
    end

    specify {@sut.should be_an_instance_of(Calculator)}

    specify {@sut.add("").should equal 0 }

  end

  context "when accessing default_array property of collection passed into the constructor" do
    before :each do
      @sut = Calculator.new("2,5,7,3,9,11,14,1,8")
    end

    specify {@sut.default_array.should have(9).entries }
    specify {@sut.default_array.should include "11" }
    specify {@sut.default_array.should_not include "35" }
    specify {@sut.default_array.should respond_to(:length) }
    specify {@sut.default_array.should_not be_empty }

  end

  context "when adding another value to the default" do
    before :each do
      @sut = Calculator.new("2,5,7,3,9,11,14,1,8")
    end

    # automatic generation for this one is limited
    # from RSpec book, regarding specify:
    # "Our advice is to always start by writing exactly what you want to say
    # and only resort to using the generated descriptions when you actually see
    # that the string and the expectation line up precisely."
    specify {
             expect {
        @sut.add_to_default("12")
      }.to change { @sut.default_array.count }.from(9).to(10)
    }

    it "should increment the array by 1" do
      expect {
        @sut.add_to_default("12")
      }.to change { @sut.default_array.count }.from(9).to(10)
    end
  end

  context "when passing empty array to constructor" do
    before :each do
      @sut = Calculator.new("", 35.75)
    end

    specify {@sut.default_array.should be_empty }
  end

    context "when passing floating point value to constructor" do
    before :each do
      @sut = Calculator.new("", 35.75)
    end

    specify {@sut.fp_value.should be_within(0.005).of(35.75) }
  end
end
