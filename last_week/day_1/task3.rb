# to check given number is spy or not
# input - 123
# sum: 1+2+3=6
# mul: 1*2*3=6
# sum and mul should be same
num = gets.to_i
n=num
sum=0
prod=1
while num!=0
  res=num%10
  sum=sum+res
  prod=prod*res
  num=num/10
end
if sum==prod
  puts "num is spy #{n}"
else
  puts "num is not spy #{n}"
end

