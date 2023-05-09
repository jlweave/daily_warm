# Given an integer array nums and an integer k, return the k most frequent elements. You may return the answer in any order.
# Example 1:
# Input: nums = [1,1,1,2,2,3], k = 2
# Output: [1,2]
# Example 2:
# Input: nums = [1], k = 1
# Output: [1]
# Constraints:
# 1 <= nums.length <= 105
# -104 <= nums[i] <= 104
# k is in the range [1, the number of unique elements in the array].
# It is guaranteed that the answer is unique.

# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
nums = [-1, -1]
k = 1
# nums = [1,1,1,2,2,3]
# k = 2

def top_k_frequent(nums, k)
  values = []
  new_nums = nums.join('').chars
  new_nums.each_with_object(Hash.new(0)) do |num, hash|
    hash[num.to_i] += 1
    values = hash.values.sort.reverse
  end
  p values[0..k-1]
  
end

p top_k_frequent(nums, k)