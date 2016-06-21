#conditinals
#simple example if - else statement
x = 10
y = 5

if x == y
  puts "x is the same as y"
else
  puts "x and y are not the same"
end

#unless method
players = ["correa","carter","altuve"]
#players = []

unless players.empty?
  players.each {|player| puts player}
end

#can do it with one line WOW!
players.each {|player| puts player} unless players.empty?

#multiple if-else conditonals

x = 10
y = 100
z = 10

if x == y
  puts "x is equal to y"
elsif x >= z
  puts "x is greater or equal to z"
else
  puts "something else"
end
# works, but ugly
if x == y
  if x == z
    puts "equal to everything"
  end
end

if x == y && x == z
  puts "equal to everything, from if statement"
end
# and &&
# or ||
x = 10
z = 10
if x==10 && (p "wow" if x == z)
  puts "hello"
end
