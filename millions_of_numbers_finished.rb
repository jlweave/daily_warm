nums_1 = [1, 2, 4, 5, 8]
nums_2 = [2, 3, 5, 7, 9]
nums_3 = [1, 2, 5, 8, 9]
new_arr = []

nums_1.each do |num1|
  if nums_2.include?(num1) && nums_3.include?(num1)
    new_arr << num1
  end
end

p new_arr