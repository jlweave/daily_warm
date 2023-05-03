nums = [-1, 2, 1, -4]
target = 1
require 'pry'; binding.pry
def three_sum_closest(nums, target)
  if nums[0] + nums[1] + nums[2] == target || nums[0] + nums[1] + nums[2] == target + 1
    p nums[0] + nums[1] + nums[2]
  # elsif nums[0] + nums[1] + nums[2] == target + 1
  #   p nums[0] + nums[1] + nums[2]
  elsif nums[0] + nums[1] + nums[3] == target || nums[0] + nums[1] + nums[3] == target + 1
    p nums[0] + nums[1] + nums[3]
  # elsif nums[0] + nums[1] + nums[3] == target + 1
  #   p nums[0] + nums[1] + nums[3]
  elsif nums[1] + nums[2] + nums[3] == target || nums[1] + nums[2] + nums[3] == target + 1
    p nums[1] + nums[2] + nums[3]
  # elsif nums[1] + nums[2] + nums[3] == target + 1
  #   p nums[1] + nums[2] + nums[3]
  elsif nums[2] + nums[3] + nums[0] == target || nums[2] + nums[3] + nums[0] == target + 1
    p nums[2] + nums[3] + nums[0]
  # elsif nums[2] + nums[3] + nums[0] == target + 1
  #   p nums[2] + nums[3] + nums[0]
  end
end

puts three_sum_closest(nums, target)
