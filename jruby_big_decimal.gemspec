# encoding: utf-8
Gem::Specification.new do |s|
  s.name        = "JRuby BigDecimal"
  s.version     = "0.0.2"
  s.date        = "2013-08-06"
  s.summary     = "Operator overloading for JVM's BigDecimal"
  s.description = "The gem opens java.math.BigDecimal and overloads"\
                  " the arithmetic operators  +, -, *, /, %, **, <=,"\
                  " <. >, >=, <=>, ==, !=, ===, >>, <<"
  s.authors     = ["Angelos Kapsimanis"]
  s.email       = "angelos.kapsimanis@gmail.com"
  s.files       = ["lib/big_decimal.rb, Rakefile"]
  s.homepage    = "https://github.com/akxs14/jruby_big_decimal"
  s.license     = "MIT"
end
