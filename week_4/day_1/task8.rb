#  given number is armstrong or not
# 153, cuve of each number in 153
# 1+125+27 = 153
n=gets.to_i
count = 0
temp=n
sum=0
org=n
while n>0
  count=count+1
  n=n/10
end
while temp>0
  rev = temp%10
  prod=1
  (1..count).each do |i|
    prod=prod*rev 
  end
  sum=sum+prod 
  temp=temp/10
end
if sum==org
  puts "armstrong number"
else
  puts "not armstrong number"
end