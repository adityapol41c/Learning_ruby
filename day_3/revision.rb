# # 5.times do |number|
# #   puts "Alternative fact number #{number}"
# # end


# # # 'Rocket' syntax
# # american_cars = {
# #   :chevrolet => "Corvette",
# #   :ford => "Mustang",
# #   :dodge => "Ram"
# # }
# # # 'Symbols' syntax
# # japanese_cars = {
# #   honda: "Accord",
# #   toyota: "Corolla",
# #   nissan: "Altima"
# # }

# # american_cars[:ford]    #=> "Mustang"
# # japanese_cars[honda:]   #=> "Accord"

# puts "Using puts:"
# puts []
# p "Using p:"
# p []


require 'pry-byebug'

def isogram?(string)
  original_length = string.length
  string_array = string.downcase.split

  binding.pry

  unique_length = string_array.uniq.length
  original_length == unique_length
end

isogram?("Odin")
