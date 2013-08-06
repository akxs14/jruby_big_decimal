# encoding: utf-8
require_relative "../../lib/big_decimal"

describe BigDecimal do

  subject { BigDecimal.new "1" }

  describe "BigDecimal#+" do
    it "should respond to the + operator" do
      subject.respond_to?(:+).should be_true
    end

    it "should perform addition of integers correctly" do
      summand_one = BigDecimal.new "1"
      summand_two = BigDecimal.new "1"
      sum         = BigDecimal.new "2"
      (summand_one + summand_two).should == sum
    end

    it "should perform addition of real numbers correctly" do
      summand_one = BigDecimal.new "0.0001"
      summand_two = BigDecimal.new "0.0001"
      sum         = BigDecimal.new "0.0002"
      (summand_one + summand_two).should == sum
    end
  end

  describe "BigDecimal#-" do
    it "should respond to the - operator" do
      subject.respond_to?(:-).should be_true
    end

    it "should perform subtraction of integers correctly" do
      minuend    = BigDecimal.new "2"
      subtrahend = BigDecimal.new "1"
      difference = BigDecimal.new "1"
      (minuend - subtrahend).should == difference
    end

    it "should perform subtraction of real numbers correctly" do
      minuend    = BigDecimal.new "0.0002"
      subtrahend = BigDecimal.new "0.0001"
      difference = BigDecimal.new "0.0001"
      (minuend - subtrahend).should == difference
    end
  end

  describe "BigDecimal#*" do
    it "should respond to the * operator" do
      subject.respond_to?(:*).should be_true
    end

    it "should perform multiplication of integers correctly" do
      factor_one = BigDecimal.new "2"
      factor_two = BigDecimal.new "2"
      product    = BigDecimal.new "4"
      (factor_one * factor_two).should == product
    end

    it "should perform multiplication of real numbers correctly" do
      factor_one = BigDecimal.new "0.0002"     # 2E-4
      factor_two = BigDecimal.new "0.0002"     # 2E-4
      product    = BigDecimal.new "0.00000004" # 4E-8
      (factor_one * factor_two).should == product
    end
  end

  describe "BigDecimal#/" do
    it "should respond to the / operator" do
      subject.respond_to?(:/).should be_true
    end

    it "should perform division of integers correctly" do
      divident = BigDecimal.new "4"
      divisor  = BigDecimal.new "2"
      quotient = BigDecimal.new "2"
      (divident / divisor).should == quotient
    end

    it "should perform division of real numbers correctly" do
      divident = BigDecimal.new "4.44"
      divisor  = BigDecimal.new "2.22"
      quotient = BigDecimal.new "2"
      (divident / divisor).should == quotient
    end
  end

  describe "BigDecimal#**" do
    it "should respond to the ** operator" do
      subject.respond_to?(:**).should be_true
    end

    it "should perform exponentiation of integers correctly" do
      base      = BigDecimal.new "2"
      exponent  = BigDecimal.new "2"
      power     = BigDecimal.new "4"
      (base ** exponent).should == power
    end

    it "should perform exponentiation of real numbers correctly" do
      base      = BigDecimal.new "4.44"
      exponent  = BigDecimal.new "2.22"
      power     = BigDecimal.new "19.7136"
      (base ** exponent).should == power
    end

    it "should be able to work with integers as exponents" do
      base      = BigDecimal.new "2"
      exponent  = 2
      power     = BigDecimal.new "4"
      (base ** exponent).should == power
    end
  end

  describe "BigDecimal#%" do
    it "should respond to the % operator" do
      subject.respond_to?(:%).should be_true
    end

    it "should perform module operation on integers correctly" do
      divident = BigDecimal.new "4"
      divisor  = BigDecimal.new "2"
      modulo = BigDecimal.new "0"
      (divident % divisor).should == modulo
    end

    it "should perform exponentiation of real numbers correctly" do
      divident = BigDecimal.new "4.44"
      divisor  = BigDecimal.new "2.21"
      modulo   = BigDecimal.new "0.02"
      (divident % divisor).should == modulo
    end
  end

  describe "BigDecimal#<=" do
    it "should respond to the <= operator" do
      subject.respond_to?(:<=).should be_true
    end

    it "should perform comparison on integers correctly" do
      operant_a = BigDecimal.new "4"
      operant_b  = BigDecimal.new "2"
      (operant_a <= operant_b).should be_false
    end

    it do
      operant_a = BigDecimal.new "2"
      operant_b  = BigDecimal.new "4"
      (operant_a <= operant_b).should be_true
    end

    it do
      operant_a = BigDecimal.new "4"
      operant_b  = BigDecimal.new "4"
      (operant_a <= operant_b).should be_true
    end

    it "should perform exponentiation of real numbers correctly" do
      operant_a = BigDecimal.new "4.44"
      operant_b  = BigDecimal.new "2.21"
      (operant_a <= operant_b).should be_false
    end

    it do
      operant_a = BigDecimal.new "2.21"
      operant_b  = BigDecimal.new "4.44"
      (operant_a <= operant_b).should be_true
    end

    it do
      operant_a = BigDecimal.new "4.44"
      operant_b  = BigDecimal.new "4.44"
      (operant_a <= operant_b).should be_true
    end
  end

  describe "BigDecimal#<" do
    it "should respond to the < operator" do
      subject.respond_to?(:<).should be_true
    end

    it "should perform comparison on integers correctly" do
      operant_a = BigDecimal.new "4"
      operant_b  = BigDecimal.new "2"
      (operant_a < operant_b).should be_false
    end

    it do
      operant_a = BigDecimal.new "2"
      operant_b  = BigDecimal.new "4"
      (operant_a < operant_b).should be_true
    end

    it do
      operant_a = BigDecimal.new "4"
      operant_b  = BigDecimal.new "4"
      (operant_a < operant_b).should be_false
    end

    it "should perform exponentiation of real numbers correctly" do
      operant_a = BigDecimal.new "4.44"
      operant_b  = BigDecimal.new "2.21"
      (operant_a < operant_b).should be_false
    end

    it do
      operant_a = BigDecimal.new "2.21"
      operant_b  = BigDecimal.new "4.44"
      (operant_a < operant_b).should be_true
    end

    it do
      operant_a = BigDecimal.new "4.44"
      operant_b  = BigDecimal.new "4.44"
      (operant_a < operant_b).should be_false
    end
  end

  describe "BigDecimal#<=" do
    it "should respond to the >= operator" do
      subject.respond_to?(:>=).should be_true
    end

    it "should perform comparison on integers correctly" do
      operant_a = BigDecimal.new "4"
      operant_b  = BigDecimal.new "2"
      (operant_a >= operant_b).should be_true
    end

    it do
      operant_a = BigDecimal.new "2"
      operant_b  = BigDecimal.new "4"
      (operant_a >= operant_b).should be_false
    end

    it do
      operant_a = BigDecimal.new "4"
      operant_b  = BigDecimal.new "4"
      (operant_a >= operant_b).should be_true
    end

    it "should perform exponentiation of real numbers correctly" do
      operant_a = BigDecimal.new "4.44"
      operant_b  = BigDecimal.new "2.21"
      (operant_a >= operant_b).should be_true
    end

    it do
      operant_a = BigDecimal.new "2.21"
      operant_b  = BigDecimal.new "4.44"
      (operant_a >= operant_b).should be_false
    end

    it do
      operant_a = BigDecimal.new "4.44"
      operant_b  = BigDecimal.new "4.44"
      (operant_a >= operant_b).should be_true
    end
  end

  describe "BigDecimal#<" do
    it "should respond to the > operator" do
      subject.respond_to?(:>).should be_true
    end

    it "should perform comparison on integers correctly" do
      operant_a = BigDecimal.new "4"
      operant_b  = BigDecimal.new "2"
      (operant_a > operant_b).should be_true
    end

    it do
      operant_a = BigDecimal.new "2"
      operant_b  = BigDecimal.new "4"
      (operant_a > operant_b).should be_false
    end

    it do
      operant_a = BigDecimal.new "4"
      operant_b  = BigDecimal.new "4"
      (operant_a > operant_b).should be_false
    end

    it "should perform exponentiation of real numbers correctly" do
      operant_a = BigDecimal.new "4.44"
      operant_b  = BigDecimal.new "2.21"
      (operant_a > operant_b).should be_true
    end

    it do
      operant_a = BigDecimal.new "2.21"
      operant_b  = BigDecimal.new "4.44"
      (operant_a > operant_b).should be_false
    end

    it do
      operant_a = BigDecimal.new "4.44"
      operant_b  = BigDecimal.new "4.44"
      (operant_a > operant_b).should be_false
    end
  end

  describe "BigDecimal#==" do
    it "should return true for equal integers" do
      operant_a = BigDecimal.new "1"
      operant_b = BigDecimal.new "1"
      (operant_a == operant_b).should be_true
    end

    it "should return false for inequal integers" do
      operant_a = BigDecimal.new "1"
      operant_b = BigDecimal.new "0"
      (operant_a == operant_b).should be_false
    end

    it "should return true for equal reals" do
      operant_a = BigDecimal.new "1.00"
      operant_b = BigDecimal.new "1.00"
      (operant_a == operant_b).should be_true
    end

    it "should return false for inequal reals" do
      operant_a = BigDecimal.new "1.00"
      operant_b = BigDecimal.new "0.00"
      (operant_a == operant_b).should be_false
    end
  end

  describe "BigDecimal#!=" do
    it "should return false for equal integers" do
      operant_a = BigDecimal.new "1"
      operant_b = BigDecimal.new "1"
      (operant_a != operant_b).should be_false
    end

    it "should return true for inequal integers" do
      operant_a = BigDecimal.new "1"
      operant_b = BigDecimal.new "0"
      (operant_a != operant_b).should be_true
    end

    it "should return false for equal reals" do
      operant_a = BigDecimal.new "1.00"
      operant_b = BigDecimal.new "1.00"
      (operant_a != operant_b).should be_false
    end

    it "should return true for inequal reals" do
      operant_a = BigDecimal.new "1.00"
      operant_b = BigDecimal.new "0.00"
      (operant_a != operant_b).should be_true
    end
  end

  describe "BigDecimal#<=>" do
    it "should return 0 when a equals b" do
      operant_a = BigDecimal.new "1.00"
      operant_b = BigDecimal.new "1.00"
      (operant_a <=> operant_b).should == 0
    end

    it "should return 1 when a is greater than b" do
      operant_a = BigDecimal.new "1.00"
      operant_b = BigDecimal.new "0.00"
      (operant_a <=> operant_b).should == 1
    end

    it "should return -1 when a is smaller than b" do
      operant_a = BigDecimal.new "0.00"
      operant_b = BigDecimal.new "1.00"
      (operant_a <=> operant_b).should == -1
    end

  end

end
