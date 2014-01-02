#Recursive dictionary_sort

def sort some_array # This "wraps" recursive_sort.
	sorted = []
	recursive_dictionary_sort some_array, sorted
end
def recursive_dictionary_sort unsorted_array, sorted_array
	if unsorted_array.length == 0
		return sorted_array
	end
	minindex = dictionary_min unsorted_array
	sorted_array.push(unsorted_array[minindex])
	unsorted_array.delete_at(minindex)
	recursive_dictionary_sort unsorted_array, sorted_array
end
def dictionary_min array
	i = 0
	min = i
	while i < array.length
		if array[i].downcase < array[min].downcase
			min = i
		end
		i = i + 1
	end
	min
end

quit = 0
strings = []
count = 0
puts 'Input string (\'-1\' to quit): '
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
	puts 'Sorted result: '
	strings = sort strings
	puts strings
end