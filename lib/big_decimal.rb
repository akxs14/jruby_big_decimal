# encoding: utf-8
require 'java'

java_import "java.math.BigDecimal"

class BigDecimal

  def +(y)
    self.add(y)
  end

  def -(y)
    self.subtract(y)
  end

  def *(y)
    self.multiply(y)
  end

  def /(y)
    self.divide(y)
  end

  def **(n)
    n.class == java.math.BigDecimal ? int_n = n.toString.to_i : int_n = n
    self.pow(int_n)
  end

  def %(n)
    self.remainder(n).abs
  end

  def <=(y)
    self.compareTo(y) <= 0
  end

  def <(y)
    self.compareTo(y) < 0
  end

  def >=(y)
    self.compareTo(y) >= 0
  end

  def >(y)
    self.compareTo(y) > 0
  end

end
