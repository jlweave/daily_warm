# Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

# An input string is valid if:

# Open brackets must be closed by the same type of brackets.
# Open brackets must be closed in the correct order.
# Every close bracket has a corresponding open bracket of the same type.

# Example 1:
# Input: s = "()"
# Output: true

# Example 2:
# Input: s = "()[]{}"
# Output: true

# Example 3:
# Input: s = "(]"
# Output: false

def is_valid(s)
  stack = []
  s.each_char do |char|
    if char == "(" || char == "{" || char == "["
      stack.push(char)
    else
      return false if stack.empty?
      top = stack.pop
      if char == ")" && top != "(" ||
         char == "}" && top != "{" ||
         char == "]" && top != "["
        return false
      end
    end
  end
  return stack.empty?
end

# The function iterates through the string, character by character. 
# If the character is an opening bracket, it is pushed onto the stack. 
# If the character is a closing bracket, the function checks if the stack is empty. 
# If the stack is empty, the function returns false because there is no corresponding opening bracket.
# If the stack is not empty, the function pops the last item from the stack
# and checks if it matches the current closing bracket. 
# If they dont match, the function returns false. 
# If all the characters have been processed and the stack is empty,
# the function returns true, indicating that the string is valid.