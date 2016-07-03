full_name = Proc.new {|first, last| first + " " + last}
# you can also do this(equivalent syntax) (curly braces only admits one line)
full_name = Proc.new do |first,last|
  first + " " + last
end
p full_name["Jordan","Hudgens"]
p full_name.call("Jordan","Hudgens")

#Traditional way(no procs)
def full_name(first,last)
  first + " " +last
end

full_name("jordan","hudgens")

#lambdas
first_name = lambda { |first, last| first + " " + last}
p first_name["jordan","hudges"]

#stabby lambda syntax
first_name = -> (first,last) { first + " " + last}
p first_name["lucas","oliveira"]
#you can also call this way
p first_name.call("lucas","oliveira")

#THE DIFFERENCE BETWEEN PROCS AND LAMBDAS (BEYOND THE SYNTAX)

#Argument Count
#Lambdas count arguments, procs do not
full_name = lambda { | first, last| first + " "+last}
#p full_name.call("Jordan","David", "Hudgens") throw an error
full_name = Proc.new { | first, last| first + " "+last}
#does not care about the third parameter
p full_name.call("Jordan","David", "Hudgens")

#Return behaviour
#Lambda finish my_method
def my_method
  x = lambda{return}
  x.call
  p "TExt from within the method"
end

#my_method

#Return behaviour
#interrupts method flux
def my_method
  x = Proc.new{return}
  x.call
  p "TExt from within the method"
end
my_method
