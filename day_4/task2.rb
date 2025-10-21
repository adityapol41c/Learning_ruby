# to print sum and product of 1st n natural numbers
num = gets.to_i
sum=0
prod=1
(1..num).each do |number|
  sum = sum+number
  prod=prod*number
end
puts "sum = #{sum} and product = #{prod}"
