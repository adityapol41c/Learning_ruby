# 387. First Unique Character in a String
# Given a string s, find the first non-repeating character in it and return its index. 
# If it does not exist, return -1.

# Example 1:
# Input: s = "leetcode"
# Output: 0
# Explanation:
# The character 'l' at index 0 is the first character that does not occur at any other 
# index.

# Example 2:
# Input: s = "loveleetcode"
# Output: 2

def first_unique_char(s)
  char_counts = s.chars.tally 
  # "leetcode" = {"l"=1, "e"=3, "t"=1, "c"=1, "o"=1, "d"=1,}
  # "loveleetcode" = {"l"=2, "o"=4, "v"=1, "e"=4, "t"=1, "c"=1, "d"=1}

  s.chars.each_with_index do |char, index|
    if char_counts[char] == 1
      return index 
    end
  end

  return -1 
end

puts first_unique_char("leetcode")      
puts first_unique_char("loveleetcode")  
puts first_unique_char("aabb")          