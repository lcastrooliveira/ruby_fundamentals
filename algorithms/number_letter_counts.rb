#If number 1 to 5 are written out in word: one,two,three,four,five then there are
# 3+3+5+4+4 = 19 letters used in total. Do that math for the number from 1 to 1000
#note, do not count spaces and dashes so five hundred forty-two -> fivehundredfortytwo
require 'humanize' #conerts integers in written form

no_space_array, total = [], 0
(1..1000).to_a.map(&:humanize).each {|word| no_space_array << word.delete(" ").delete("-")}.each { |element| total += element.length}
p total
