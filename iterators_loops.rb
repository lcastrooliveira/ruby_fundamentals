#while iterator
i = 0

while i < 10
  puts 'hey there'
  i +=1
  #i++  -> does not exist
end

#each
arr = [23,2335,454,123,434554,1232]

arr.each do |i|
  #p i
end

#does the exact same thing
arr.each {|i| p i}

#you rarely use it in ruby, but you can do like this
for i in 0..42
  p i
end
