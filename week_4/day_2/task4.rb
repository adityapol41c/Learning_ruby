# Given an array of strings words, return the first palindromic string in the array. 
# If there is no such string, return an empty string "".
# A string is palindromic if it reads the same forward and backward.

# Example 1:
# Input: words = ["abc","car","ada","racecar","cool"]
# Output: "ada"
# Explanation: The first string that is palindromic is "ada".
# Note that "racecar" is also palindromic, but it is not the first.

def palindromic(words)
  def is_palindrom(s)
    return s == s.reverse
  end
  words.each do |word|
    if is_palindrom(word)
      return word
    end
  end
  return ""
end
word1 = ["abc","tea","radar"]
puts palindromic(word1)
word2 = ["xyz","ada"]
puts palindromic(word2)
