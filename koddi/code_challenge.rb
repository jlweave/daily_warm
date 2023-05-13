#### Question One: ####

# Given an array of positive integers nums , you start at the first index. Each element in the array represents the length you move forward by. Determine the number of moves you need to exit the array. you may assume that the array will never be empty.
# Example 1:
nums = [3,1,1,4,3]
# output: 2
# explanation: move1 > Index0 -> Index3
#                       move2  > Index 3 -> Exit
# Example 2:
# nums = [1,2,5,2,1,1]
# output: 4
# explanation: move 1: Index 0 -> Index 1
#              move 2: Index 1 -> Index 3
#              move 3: Index 3 -> Index 5
#              move 4: Index 5 -> Exit 
def move_index(nums)
  moves = 0
  index = 0
  while index < nums.length
    moves += 1
    index += nums[index]
  end
end

p move_index(nums)






#### Question Two: ####

# Given an array of positive integers nums , you start at the first index. Each element in the array represents the maximum length you can move forward by (e.g. if current element is 3, you can move forward by either 1,2, or 3). Determine the maximum number of moves you need to exit the array. You may assume that the array will never be empty.
# Example 1:
#  nums = [1,2,5,2,1,1]
# output: 3
# explanation: move 1: Index 0 -> Index 1
#              move2: Index 1-> Index 2
#              move 3: Index 2 -> Exit

# Example 2:
# nums = [4,2,1,5,1,2]
# output : 2
# Explain: move 1: Index 0 -> Index 3
#               move 2: Index 3 -> Exit