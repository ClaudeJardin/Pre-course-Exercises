#Recursive Shuffle

def shuffle some_array 
  shuffle = []
  recursive_shuffle some_array, shuffle
end
def recursive_shuffle original_array, shuffle_array
  
  if original_array.length == 0
    return shuffle_array
  end
  from_index = rand(original_array.length)
  to_index = 0
  if shuffle_array.length > 0
    to_index = rand(shuffle_array.length + 1)
  end
  shuffle_array.insert(to_index, original_array[from_index])
  original_array.delete_at(from_index)
  recursive_shuffle original_array, shuffle_array
end

srand
quit = 0
strings = []
count = 0
puts 'Input object (\'-1\' to quit): '
while quit == 0
  temp = gets.chomp
  if temp == '-1'
    quit = 1
  elsif temp.length > 0
    strings[count] = temp
    count = count + 1
  end
end
if count == 0
  puts 'No elements!'
else
  puts 'Shuffled result: '
  strings = shuffle strings
  puts strings
end