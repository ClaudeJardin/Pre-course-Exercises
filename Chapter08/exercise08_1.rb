#8.3 A Few Thing to Try - Part I

words = []
count = 0
puts 'Please input a word (press \'Enter\' to stop):'
input = gets.chomp
while input.length != 0
	words[count] = input
	count = count + 1
	puts 'Please input a word (press \'Enter\' to stop):'
	input = gets.chomp
end
puts ''
puts 'The sorted result:'
puts words.sort
