# A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.

# Given a string s, return true if it is a palindrome, or false otherwise.

 

# Example 1:
# Input: 
# s = "A man, a plan, a canal: Panama"
# Output: true
# Explanation: "amanaplanacanalpanama" is a palindrome.

# Example 2:
# Input: 
# s = "race a car"
# Output: false
# Explanation: "raceacar" is not a palindrome.

# Example 3:
# Input: 
s = "0P"
# Output: true
# Explanation: s is an empty string "" after removing non-alphanumeric characters.
# Since an empty string reads the same forward and backward, it is a palindrome.

# @param {String} s
# @return {Boolean}
def is_palindrome(s)
  s = s.downcase
  new_s = s.gsub(/(\W|\d)/, "")
  require 'pry'; binding.pry
    if s.chars.count == 1
      p true
    elsif new_s == new_s.reverse
      p true
    else
      p false
    end
 
end
puts is_palindrome(s)