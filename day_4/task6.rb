# factorial of a number
n=gets.to_i
prod=1
(1..n).each do |num|
  prod=prod*num
  puts "factorial of #{n} is #{prod}"
end
