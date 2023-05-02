# @param {Integer} n
# @return {Integer}
#count how many time first digit apears in a range
# 13 => 1, 10, 11, 12, 13 ==> 6
# split apart and look at index [0]
#count? include? can you count an include?
#need a counter +=1
n = 3184191
def count_digit_one(n)
  digit = 1
  full_range = *(1..n)
  range_string = full_range.join('')
  final = range_string.chars
  new_final = final.map(&:to_i)
  answer = new_final.count(digit)
  p answer
end

p count_digit_one(n)