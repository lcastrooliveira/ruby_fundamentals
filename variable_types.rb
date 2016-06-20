#Local Variables
#10.times do
#     x = 10
#     p x
#end
#p x

#Global Variables
#10.times do
#     $x = 10
#end
#p $x

#Instance Variables
# @batting_average = 300
#This means that only an intance of the method
#that has this variable set will have access to it
#what is the difference from local variables then ?
#Local variables are visible only inside the body of that
#method specifically. Whereas the intance variable the
#variable is visible inside any intance of that method.
#For example, if you have an intance variable called
# @jobs inside the method index of a jobs_controller(in rails)
#it means that the @jobs variable will only be visible inside the method index
#and also inside the index.erb(view), since they're connected.
#If @jobs, where just 'jobs', this variable would be invisible inside the view file.

#Constant (ALL CAPITAL LETTERS, in ruby, constants are not final)
#TEAM = "Angels"
#TEAM = "Athletics"
#p TEAM -> will print 'Athletics' and will let you know that the value has been changed.

#Class Variable (only available to the class intance)
class MyClass
  @@teams = ["A's", "Tigers"]
end
