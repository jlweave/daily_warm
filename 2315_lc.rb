s = "l|*e*et|c**o|*de|"
def count_asterisks(s)
    counter = 0
    s.chars.each do |char|
        char.count('|')
        if char.count('|').even? && char == '*'
            counter += 1
        end
    end 
    counter
end

wip = count_asterisks(s)
require 'pry'; binding.pry