# print prime numbers
n=gets.to_i
(2..n).each do |number|
  res=true
  sqr=Math.sqrt(number).to_i
  (2..sqr).each do |i|
    if number%i==0
      res=false
      break
    end
  end
  if res
    puts number
  end
end