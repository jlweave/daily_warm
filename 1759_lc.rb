s = "abbcccaa"
# @param {String} s
# @return {Integer}
#need to count letters 
#count letters in patterns
#make it dynamic

def count_homogenous(s)
  counter = 0
  base_counter = 1
  letters = s.gsub(/(.)\1*/).to_a
  letters.each do |letter|
    if letter.length == 1
      counter += 1
    else letter.length > 1 
      base_counter 
      counter += base_counter
    end
  end
  p counter
end

p count_homogenous(s)