# given number is automorphic or not
# 5, 5 sqr is 25, given number is single digit and last digit of sqr is 5 = given number
# 25, 25 sqr is 625, given number is two digit and last 2 digit is 25 = given number
n=gets.to_i
count=0
sum=0
temp=n
while temp>0
  count=count+1
  temp=temp/10
end
sqr = n*n
divisor=1
(1..count).each do |i|
  divisor=divisor*10
end
to_find = sqr%divisor
if to_find==n
  puts "yes"
else
  puts "no"
end

