# find the neon number
# number sqr, then add the result = org num
# 9 sqr = 81, 8+1=9 
n=gets.to_i
sum=0
sqr=n*n
while sqr>0
  res=sqr%10
  sum=sum+res
  sqr=sqr/10
end
if sum==n
  puts "neon number"
else
  puts "not neon number"
end
