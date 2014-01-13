def old_roman_numeral integer
  n = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
  romans = ['M', 'CM', 'D', 'CD', 'C', 'XC', 'L', 'XL', 'X', 'IX', 'V', 'IV', 'I']
  result = ''
  i = 0
  
  if integer < 4
    return 'I' * integer
  end
  while i < n.length && integer > 0
    r = integer / n[i]
    if r > 0
      prefix = ''
      if r > 1
        prefix = old_roman_numeral (r - 1) * n[i]
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
while integer < 1 || integer > 100000
  puts 'Input integer: '
  integer = gets.chomp.to_i
  if integer < 1 || integer > 100000
    puts 'Please input integer between 1 and 100000!'
  end
end
result = old_roman_numeral integer
puts 'Old roman numeral: ' + result