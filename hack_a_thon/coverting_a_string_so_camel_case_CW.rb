#if != (/[A-Za-a]/) or [[:alpha]]
#look to the next index [+1] .upcase
#if != (/[A-Za-a]) or [[:alpha]] delete
#

str = "the-stealth-warrior"
# str = "The_Stealth_Warrior"
# str = "The-Stealth-Warrior"
def to_camel_case(str)
  arr = []
  require 'pry'; binding.pry
  new_str = str.split('-')
  new_str.each do |up_str|
    arr << up_str.capitalize 
    require 'pry'; binding.pry
  end
  p arr.join
end
p to_camel_case(str)