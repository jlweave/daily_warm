word = "aazz"
def equal_frequency(word)
  new_word = []
  new_word << word.chars.uniq
  word_count = new_word.flatten.count
  old_word_count = word.chars.count
  if word_count == old_word_count
      true
  elsif word_count != old_word_count
      new_word_count = word_count +1
      new_word_count == old_word_count
      require 'pry'; binding.pry
      true
  else
      false
  end
end

p equal_frequency(word)