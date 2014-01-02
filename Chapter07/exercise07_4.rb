#Leap years

count = 0
puts 'Start year:'
startyear = gets.chomp.to_i
puts 'End year:'
endyear = gets.chomp.to_i
if startyear > endyear
	puts 'Invalid years!'
else
	puts 'Leap year(s):'
	while startyear <= endyear
		if startyear % 400 == 0 || (startyear % 4 == 0 && startyear % 100 != 0)
			puts startyear
			count = count + 1			
		end
		startyear = startyear + 1
	end
	if count == 0
		puts 'There is no leap year.'
	end
end