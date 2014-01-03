def old_roman_numeral integer
  n = [1000, 500, 100, 50, 10, 5, 1]
  romans = ['M', 'D', 'C', 'L', 'X', 'V', 'I']
  result = ''
  i = 0
  
  if integer < 5
    return 'I' * integer
  end
  while i < n.length && integer > 0
    r = integer / n[i]
    if r > 0
      prefix = ''
      if r > 1
        prefix = old_roman_numeral r
      end
      
      middle = ''
      if i < n.length - 1
        middle = romans[i]
      end
      
      postfix = old_roman_numeral integer % n[i]
      
      return prefix + middle + postfix
    end
    integer = integer % n[i]
    i = i + 1
  end
  ''
end

integer = 0
while integer < 1 || integer > 3000
  puts 'Input integer: '
  integer = gets.chomp.to_i
  if integer < 1 || integer > 3000
    puts 'Please input integer between 1 and 3000!'
  end
end
result = old_roman_numeral integer
puts 'Old roman numeral: ' + result