#Given an array of integers
array = (1..10).to_a
#Only grab the even integers
#Most terrible way
=begin
  while(1 < array.size) do |x|
    if x % 2 == 0
      p x
  end
=end
#A better way(If ran with ruby [file] in the console prints nothing)
array.select do |x|
  x.even?
end

#A even better way of doing it

array.select {|x| x.even?}

# even even better way of doing it
array.select(&:even?)
#The & means that you're passing a block
#Expecting an array of values
#It bypasses having an iterator, it guesses
# that you want to apply the method to each
# member of the array

#Another example
history = %w("The quick lazy fox jumped over the lazy dog")
history.select {|x| x.length > 5}
#note that you can't use the & syntax because you're applying a conditional
#to each element.

#Yet another example
#Given an array of strings
#found all vowels
letters = %w(a b c d e f g h)
letters.select {|v| v =~ /[aeiou]/ }
#where =~ is a regular expression comparator
