#Leap years

count = 0
puts 'Start year:'
start_year = gets.chomp.to_i
puts 'End year:'
end_year = gets.chomp.to_i
if start_year > end_year
  puts 'Invalid years!'
else
  puts 'Leap year(s):'
  while start_year <= end_year
    if start_year % 400 == 0 || (start_year % 4 == 0 && start_year % 100 != 0)
      puts start_year
      count = count + 1      
    end
    start_year = start_year + 1
  end
  if count == 0
    puts 'There is no leap year.'
  end
end