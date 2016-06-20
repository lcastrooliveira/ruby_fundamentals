#inject - lets say you have the following array
[3,4,5,21,45,32,12,5,32,18,98]
# way to find the sum would be
total = 0
[3,4,5,21,45,32,12,5,32,18,98].each do |i|
  total += i
end
#but is four lines of code, what a waste! You could do something like
[3,4,5,21,45,32,12,5,32,18,98].inject(&:+)
#which does the same thing, the inject function adds the result of each operation to the result
#this is only possible because + - * / are methods in ruby and not operators, so
#when you use the & notation, you're actually calling a method.
