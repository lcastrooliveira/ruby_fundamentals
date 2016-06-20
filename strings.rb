puts "Name an animal"
animal = gets.chomp

puts "Name a noun"
noun = gets.chomp

p "The quick brown #{animal} jumped over the lazy #{noun}"

p "Astros".upcase
p "Astros".downcase
p "Astros".reverse

#You can also chain them together
p "Astros".upcase.reverse

m = "Milk"
#returns nill and affects the variable itself
m.upcase!
