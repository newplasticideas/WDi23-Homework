# The Romans wrote numbers using letters - I, V, X, L, C, D, M. (notice these letters have lots of straight lines and are hence easy to hack into stone tablets using a chisel).
#
#  1  => I
# 10  => X
#  7  => VII
# Write a program that will convert Arabic numerals to Roman numerals.
#
# There is no need to be able to convert numbers larger than about 3000. (The Romans themselves didn't tend to go any higher)
#
# Wikipedia says: "Modern Roman numerals ... are written by expressing each digit separately starting with the left most digit and skipping any digit with a value of zero."
#
# To see this in practice, consider the example of 1990.
#
# In Roman numerals 1990 is MCMXC:
#
# 1000=M 900=CM 90=XC
#
# 2008 is written as MMVIII:
#
# 2000=MM 8=VIII

require 'pry'

class Roman
  def initialize
    @roman_map = {
      1000 => 'M',
      900 => 'CM',
      500 => 'D',
      400 => 'CD',
      100 => 'C',
      90 => 'XC',
      50 => 'L',
      40 => 'XL',
      10 => 'X',
      9 => 'IX',
      5 => 'V',
      4 => 'IV',
      1 => 'I'
    }
  end #init

  def to_roman( number )
    result = ''
    @roman_map.each do |key, value|
      # puts "EACH: #{key} => #{value}. Number #{number}. Result = #{result}"
      while number >= key
        result += value
        number -= key
        # puts "WHILE: #{key} => #{value}. So we add #{value} to our result making it #{result}. Now the number is #{number}"
      end #while
      break if number == 0
    end #loop
    puts "Result = #{result}"
  end #to_roman
end #Roman


  tester = Roman.new
  tester.to_roman(1990)
