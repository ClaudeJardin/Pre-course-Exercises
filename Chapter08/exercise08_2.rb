#8.3 A Few Thing to Try - Part II

width1 = 35
width2 = 15
titles = ['Getting Started', 'Numbers', 'Letters']
pages = [1, 9, 13]
puts 'Table of Contents'.center(width1 + width2)
puts ' '.center(width1 + width2)

i = 0
while i < 3
	puts ('Chapter ' + (i + 1).to_s + ':  ' + titles[i]).ljust(width1) + ('page ' + pages[i].to_s.rjust(2)).rjust(width2)
	i = i + 1
end