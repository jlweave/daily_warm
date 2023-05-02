nums = [1,5,-2,-4,0]
def contains_duplicate(nums)
  if nums.uniq.count != nums.count
      true
  else
      false
  end
end

p contains_duplicate(nums)