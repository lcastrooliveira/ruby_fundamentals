#Arrays
#create an array
x = [1,3,4,5]
#or
y = Array.new
#Arrays index always start on 0
y[0] = 543
y
#returns [543]
y[10] = [432]
y
#will return
#[543,nil,nill,nill....,432]
y.each do |i|
  puts i
end
#will print a lot of blank elements
#to delete an element of the array
x.delete(4)
#will delete element with value 4 from the array, nill if not found
x.delete_at(0)
#will delete element at index position 0, nill if index out of bounds
x.length
#returns the size of the array
batting_average = [0.3,0.18,0.22,0.25]
#delete_if receives a block of code that deletes the element
#where the conditional returns true
batting_average.delete_if {|average| average < 0.24 }
p batting_average

#Join, iterates on each value, makes a giant string and defines the separator
#as specified in the argument. For example:
teams = ["astros","yankees","rangers","mets","cardinals"]
p teams.join(',')
#returns "astros,yankees,rangers,mets,cardinals"
#push, add element to the end
teams.push "marlins"
#add multiple elements
teams.push "red sox", "blue jays"
p teams
#pop -> remove the last element (and returns it)
z = teams.pop # z receives "blue jays"
