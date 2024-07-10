# Write your code here
require 'pry'

def reverse_each_word(sentence)
  words = sentence.split
  reversed_words = []
  words.each do |word|
    reversed_words << word.reverse
  end
  puts reversed_words.join(" ")
end

reverse_each_word("Hello there, and how are you?")

## could also be refactored to:
def reverse_each_word(sentence)
  words = sentence.split

  reversed_words = words.map do |word|
    word.reverse
  end

  reversed_words.join(" ")
end


### or like:
def reverse_each_word(sentence)
  words = sentence.split

  reversed_words = words.map(&:reverse)

  reversed_words.join(" ")
end


#### even more:
def reverse_each_word(sentence)
  sentence.split.map(&:reverse).join(" ")
end
