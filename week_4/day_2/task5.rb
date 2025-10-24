# Given a positive integer n, find the sum of all integers in the range [1, n] 
# inclusive that are divisible by 3, 5, or 7.
# Return an integer denoting the sum of all numbers in the given range satisfying the 
# constraint.

# Example 1:

# Input: n = 7
# Output: 21
# Explanation: Numbers in the range [1, 7] that are divisible by 3, 5, or 7 are 3, 5, 6, 7. The sum of these numbers is 21.

n = gets.to_i
sum=0
(1..n).each do |num|
  if (num%3==0) || (num%5==0) || (num%7==0)
    sum=sum+num
  end
end
puts "sum: #{sum}"