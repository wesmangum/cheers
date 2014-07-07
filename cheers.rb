# Build on the results of our in-class exploration to output, for example:

# Give me an... A
# Give me a... B
# Give me a... B
# Give me a... Y
# ABBY’s just GRAND!
# When given the input of “Abby”.

# Note: the “a” vs. “an”
require 'date'

puts "Whats your name?"

name = gets.chomp

if name.empty?
  puts "You must enter a name!"
  exit
end

puts "Your name is #{name}"

name.each_char do |char|
  if char == "a" || char == "e" || char == "i" || char == "o" || char == "u"
    puts "Give me an... #{char.upcase}"
  else
    puts "Give me a... #{char.upcase}"
  end
end

puts "#{name}'s just GRAND!"

puts "Hey, #{name}, what's your birthday? (mm dd)"
binput = gets.split(" ")
bday = Date.new(Date.today.year, binput[0].to_i, binput[1].to_i)
if Date.today >= bday
  days = (bday.next_year - Date.today).to_i
else
  days = (bday - Date.today).to_i
end
puts "Awesome! Your birthday is in #{days} days! Happy Birthday in advnace!"
