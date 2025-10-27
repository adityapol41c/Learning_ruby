# print number b/w 1-100 which are divisible by 3 and 5
# num = gets.chomp
(1..100).each do |number|
  if number % 3 == 0 && number % 5 ==0
    puts number
  end
end