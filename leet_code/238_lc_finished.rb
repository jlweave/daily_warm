# Given an integer array nums, return an array answer such that answer[i] is equal to the product of all the elements of nums except nums[i].
# The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.
# You must write an algorithm that runs in O(n) time and without using the division operation.

# Example 1:
# Input: nums = [1,2,3,4]
# Output: [24,12,8,6]

# Example 2:
# Input: nums = [-1,1,0,-3,3]
# Output: [0,0,9,0,0]

# @param {Integer[]} nums
# @return {Integer[]}

#need to multiply three indexs at a time but not all four
#group_by?
#loop until #of elements
#multiply index 0..element_count -1
#shovel answers into an empty array
nums = [1,2,3,4]

def product_except_self(nums)
  counter = 0
  final_array = []
  amount = nums.count - 1
  while counter < nums.count do
    nums.push(nums.shift())
    final_array << nums.first(amount).inject(:*)
    counter += 1
  end
  final_array
end

p product_except_self(nums)