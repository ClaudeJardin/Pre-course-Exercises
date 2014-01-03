#Expand upon english_number: How about wedding_number?

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
  part1 = number_convert number, 1000000000000, 'trillion'
  rest = number % 1000000000000
  part2 = number_convert rest, 1000000000, 'billion'
  rest = rest % 1000000000
  part3 = number_convert rest, 1000000, 'million'
  rest = rest % 1000000
  part4 = number_convert rest, 1000, 'thousand'
  rest = rest % 1000
  
  num_string = num_string + part1 + part2 + part3 + part4
  
  left = rest
  write = left/100 # How many thousand left?
  left = left % 100 # Subtract off those hundreds.
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
      num_string = num_string + '-'
    end
  end
  write = left # How many ones left to write out?
  left = 0 # Subtract off those ones.
  if write > 0
    num_string = num_string + ones_place[write-1]
  end
  num_string
end

def number_convert number, divisor, english_term
  write = number/divisor
  left = number%divisor
  result = ''
  if write > 0
    result = english_number write
    result = result + ' ' + english_term
    if left > 0
      result = result + ' '
    end
  end
  result
end

puts 'Input start number: '
start = gets.chomp.to_i
if start <= 0
  puts 'Please input a number larger than 0!'
  return
end 

i = start
start_number_english = ''
while i >= 2
  english = english_number(i)
  if i == start
    start_number_english = english
  end
  english_next = english_number(i - 1)
  puts english.capitalize + ' bottles of beer on the wall, ' + english + ' bottles of beer.'
  puts 'Take one down and pass it around, ' + english_next + ' bottles of beer on the wall.'
  puts ''
  i = i - 1
end

puts 'One bottle of beer on the wall, one bottle of beer.'
puts 'Take one down and pass it around, no more bottles of beer on the wall.'
puts ''
puts 'No more bottles of beer on the wall, no more bottles of beer.'
puts 'Go to the store and buy some more, ' + start_number_english + ' bottles of beer on the wall.'