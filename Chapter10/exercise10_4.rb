#Expand upon english_number.

def english_number number
	if number < 0 # No negative numbers.
		return ' Please enter a number that isn\' t negative.'
	end
	if number == 0
		return 'zero'
	end
	# No more special cases! No more returns!
	num_string = '' # This is the string we will return.
	ones_place = ['one' , 'two' , 'three' ,
				  'four' , 'five' , 'six' ,
				  'seven' , 'eight' , 'nine' ]
	tens_place = ['ten' , 'twenty' , 'thirty' ,
				  'forty' , 'fifty' , 'sixty' ,
				  'seventy' , 'eighty' , 'ninety' ]
	teenagers = ['eleven' , 'twelve' , 'thirteen' ,
				 'fourteen' , 'fifteen' , 'sixteen' ,
				 'seventeen' , 'eighteen' , 'nineteen' ]
	
	#expansion
	write_thousand = number/1000
	left_thousand = number % 1000 # Subtract off those hundreds.
	
	
	left = left_thousand
	write = left/100 # How many thousand left?
	left = left % 100 # Subtract off those hundreds.
	
	thousands = ''
	if write_thousand > 0
		thousands = english_number write_thousand
		num_string = num_string + thousands + ' thousand'
		if left_thousand > 0
			# So we don' t write ' two hundredfifty-one' ...
			num_string = num_string + ' '
		end
	end
	#end of expansion
	
	if write > 0
		# Now here' s the recursion:
		hundreds = english_number write
		num_string = num_string + hundreds + ' hundred'
		if left > 0
			# So we don' t write ' two hundredfifty-one' ...
			num_string = num_string + ' '
		end
	end
	write = left/10 # How many tens left?
	left = left - write*10 # Subtract off those tens.
	if write > 0
		if ((write == 1) and (left > 0))
			num_string = num_string + teenagers[left-1]
			left = 0
		else
			num_string = num_string + tens_place[write-1]
		end
		if left > 0
			num_string = num_string + ' - '
		end
	end
	write = left # How many ones left to write out?
	left = 0 # Subtract off those ones.
	if write > 0
		num_string = num_string + ones_place[write-1]
	end
	num_string
end

puts english_number( 0)
puts english_number( 9)
puts english_number( 10)
puts english_number( 11)
puts english_number( 17)
puts english_number( 32)
puts english_number( 88)
puts english_number( 99)
puts english_number(100)
puts english_number(101)
puts english_number(234)
puts english_number(3211)
#test
puts english_number(3051)
puts english_number(1000000)