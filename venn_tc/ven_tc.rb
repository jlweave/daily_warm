# 1. Tech questions multiple choice
# Tech problems
# 2. number given  + 1  (number is given in an array i believe); ex: ([4,2])  => 43

# arg = [5,6]
# def one_more(arg)
#  new = arg.join.to_i + 1
#  new.to_s.split('').map(&:to_i)
# end
# p one_more(arg)

# 3. does the string have any repeating letters?  ex. "abcd" => false; "abcdc" => true

# arg = "asdfjkl"
# arg = "assdf"
# def repeat(arg)
#   if arg.chars.uniq.count == arg.chars.count
#     true
#   else
#     false
#   end
# end

# p repeat(arg)

# 4. if a string of numbers is greater than string.length > 4 , replace numbers '#' execpt for the last four digits. (think Social Security Number); "12345678" => "####5678"

# arg = "12345678"
# arg = "123"
# cc = "64607935616"

# def maskify(cc)
#   symbol = []
#   if cc.chars.count <= 4
#     p cc
#   else cc.chars.count > 4
#     characters = cc.chars
#     last_four = [characters.slice(-4..-1)]
#     holder = characters - last_four[0]
#     symbol <<("#" * (holder.count)).chars
#     final = symbol + last_four
#     final.join('')
#   end
# end
# p maskify(cc)
# def password(cc)
#   symbol = []
#   if cc.chars.count <= 4
#     p cc
#   else cc.chars.count > 4
#     array = cc.chars
#     last_four = [array.slice(-4..-1)]
#     # require 'pry'; binding.pry
#     holder2 = array - last_four[0]
#     require 'pry'; binding.pry
#     symbol <<("#" * (holder2.count)).chars
#     require 'pry'; binding.pry
#     final = symbol + last_four
#     require 'pry'; binding.pry
#     final.join('')
#   end
# end

# p password(cc)

# def maskify(cc)
#   if cc.length <= 4
#     cc
#   else
#     characters = cc.chars
#     last_four = characters.last(4)
#     holder = characters[0..-5]
#     symbol = ['#'] * holder.length
#     (symbol + last_four).join('')
#   end
# end
# 5. return middle elements in a string (ex. "middle" => "dd"; "12345" => "3")
# arg = "1234685"
# arg = "testing"
#   s = "A"

#   def get_middle(s)
#   if s.chars.count.odd?
#     middle_index = s.chars.count/ 2
#     s[middle_index]
#   else
#     first_middle_index = s.chars.count / 2 - 1
#     second_middle_index = s.chars.count / 2
#     s[first_middle_index..second_middle_index]
#   end
# end

#   def get_middle(s)
#   array = []
#   middle_elements = []
#   if s.chars.count.odd?
#     array << s.chars.count/2
#     middle_elements << s.chars[array[0]]
#     p middle_elements.join('')
#   else
#     first_varible_index = s.chars.count/2 - 1
#     second_varible_index = - s.chars.count/2
#     array << first_varible_index - second_varible_index
#     require 'pry'; binding.pry
#     middle_elements << s.chars[array[0]] << s.chars[array[1]]
#     middle_elements.join('')
#   end
# end
# def middle(arg)
#   array = []
#   middle_elements =[]
#   if arg.chars.count.odd?
#     array << arg.chars.count/2
#     middle_elements << arg.chars[array[0]]
#     middle_elements.join('')
#   else
#     first_varible_index = arg.chars.count/2 - 1
#     second_varible_index = - arg.chars.count/2
#     array << first_varible_index << second_varible_index
#     middle_elements << arg.chars[array[0]] << arg.chars[array[1]]
#     middle_elements.join('')
#   end
# end
# p get_middle(s)

# 6. atm machine: denominations of $100, $50, $20 . ex: #230 withdraw => [1,1,4] ... ie [$100 => 1, $50 => 1, $20 => 4]

# amount = 230
# def withdraw(amount)
#   denominations = [100, 50, 20]
#   data = denominations.inject({}) do |hash, denomination|
#     hash[denomination] = amount.divmod(denomination)
#     amount -+ amount.divmod(denomination).first * denomination
#     hash
#   end
#   data.map do |key, value|
#     data[key] = value.first

#   end
#   data.values
# end
def withdraw(amount)
  denominations = [100, 50, 20]
  data = denominations.each_with_object({}) do |denomination, hash|
    hash[denomination] = amount.divmod(denomination)
    amount -= amount.divmod(denomination).first * denomination
  end
  data.map do |key, value|
    data[key] = value.first
    require 'pry'
    binding.pry
  end
  data.values
end

puts withdraw(230)
# def atm total, denominations
#   raw_data = denominations.inject({}) do |hash, denomination|
#     hash[denomination] = total.divmod(denomination)
#     total -+ total.divmod(denomination).first * denomination
#     hash
#   end

#   raw_data.map do |key, value|
#     raw_data[key] = value.first
#   end

#  p raw_data.values
# end

# ACTUAL VENN TECHNOLOGIES TEST

# def withdraw(amount)
#   denominations = [100, 50, 20]
#   total = amount
#   raw_data = denominations.inject({}) do |hash, denomination|
#     hash[denomination] = total.divmod(denomination)
#     total -+ total.divmod(denomination).first * denomination
#     hash
#   end
#   raw_data.values
# end

# def withdraw(amount)
#   denominations = [100, 50, 20]
#   total = amount
#   raw_data = denominations.inject({}) do |hash, denomination|
#     hash[denomination] = total.divmod(denomination)
#     total -= hash[denomination].first * denomination
#     hash
#   end
#   raw_data.map do |key, value|
#     raw_data[key] = value.first
#   end
#   raw_data.values
# end
# amount = 230
# def withdraw(amount)
#   denominations = [100, 50, 20]
#   bills = [0, 0, 0]
#   remaining = amount
#   denominations.each_with_index do |denomination, index|
#     if remaining >= denomination
#       bills[index] = remaining / denomination
#       remaining %= denomination
#     end
#   end
#   if bills[1] == 1 && bills[2] >= 3 && remaining == 10
#     bills[1] = 0
#     bills[2] = 4
#   elsif bills[1] > 0 && bills[2] >= 2 && remaining == 30
#     bills[1] = 0
#     bills[2] = 5
#   end
#   bills
# end
p withdraw(amount)

# def withdraw(amount)
#   denominations = [100, 50, 20]
#   total = amount
#   raw_data = denominations.inject({}) do |hash, denomination|
#     hash[denomination] = total.divmod(denomination)
#     total -= hash[denomination].first * denomination
#     hash
#   end
#   bills_100 = raw_data[100]
#   bills_50 = raw_data[50]
#   bills_20 = raw_data[20]
#   if bills_50 == 1 && bills_20 == 0 && total == 10
#     bills_50 = 0
#     bills_20 = 3
#   elsif bills_50 > 0 && bills_20 >= 2 && total == 30
#     bills_50 = 0
#     bills_20 = 5
#   end
#   [bills_100, bills_50, bills_20]
# end
