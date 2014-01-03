#“99 Bottles of Beer on the Wall....” 
#Write a program that prints out the lyrics to that beloved classic, 
#that field-trip favorite: “99 Bottles of Beer on the Wall.”

i = 99
while i >= 2
  puts i.to_s + ' bottles of beer on the wall, ' + i.to_s + ' bottles of beer.'
  puts 'Take one down and pass it around, ' + (i - 1).to_s + ' bottles of beer on the wall.'
  puts ''
  i = i - 1
end
puts '1 bottle of beer on the wall, 1 bottle of beer.'
puts 'Take one down and pass it around, no more bottles of beer on the wall.'
puts ''
puts 'No more bottles of beer on the wall, no more bottles of beer.'
puts 'Go to the store and buy some more, 99 bottles of beer on the wall.'