nums = [0,1,0,3,12]
def move_zeroes(nums)
  zeroes = nums.count(0)
  nums.delete(0)
  nums.concat([0]*zeroes)
  nums
end

p move_zeroes(nums)