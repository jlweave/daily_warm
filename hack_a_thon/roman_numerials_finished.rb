#change integers into a String
#convert 1-3 4 5 6-8 9 10
#split the numbers
#count the indexes
#replacement methods
# def to_roman(num)
#   digits = {
#     "I" => 1,
#     "IV" => 4,
#     "V" => 5,
#     "IX" => 9,
#     "X" => 10,
#     "XL" => 40,
#     "L" => 50,
#     "XC" => 90,
#     "C" => 100,
#     "CD" => 400,
#     "D" => 500,
#     "CM" => 900,
#     "M" => 1000
#   }
# # require 'pry'; binding.pry
# nums = num.to_s
# new_nums = nums.chars
#   num = new_nums.map do |n|
#     digits.fetch(n, n)
#     require 'pry'; binding.pry
#   end
#   p num
# end

def to_roman(num)
  roman_map = {
    1000 => "M",
    900 => "CM",
    500 => "D",
    400 => "CD",
    100 => "C",
    90 => "XC",
    50 => "L",
    40 => "XL",
    10 => "X",
    9 => "IX",
    5 => "V",
    4 => "IV",
    1 => "I"
  }
  
  roman_numeral = ""
  roman_map.each do |value, numeral|
    while num >= value
      roman_numeral += numeral
      num -= value
    end
  end
  
  roman_numeral
end

p to_roman(2017)