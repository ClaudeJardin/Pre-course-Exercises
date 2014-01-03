#Extended Deaf Grandma program.

srand
puts 'Say something: '.chomp
words = gets.chomp
count = 0
while words != 'BYE' || count < 2
  if words != words.upcase
    puts 'Grandma: HUH?! SPEAK UP, SONNY!'
    count = 0
  elsif words == 'BYE'
    puts 'Grandma: ...'
    count = count + 1
  else
    count = 0
    puts 'Grandma: NO, NOT SINCE ' + (1930 + rand(21)).to_s + '!'
  end
  puts 'Say something: '.chomp
  words = gets.chomp
end

puts 'Grandma: BYE!'