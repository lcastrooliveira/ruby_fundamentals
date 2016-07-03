#hashes
#modern syntax
positions = { first_base: "Chris Carter", second_base: "Jose Altuve", shortstop: "Carlos Correa"}
#traditional syntax
positions = { "first_base" => "Chris Carter", "second_base" => "Jose Altuve", "shortstop" => "Carlos Correa"}
#another way (gets converted to it anyway)
positions = {:first_base=>"Chris Carter", :second_base=>"Jose Altuve", :shortstop=>"Carlos Correa"}
p positions[:second_base]
#returns "Jose Altuve"
people = {jordan: 32, tiffany: 27, kristine: 10, heather:29}
#delete from hash, returns the value and delete from hash
people.delete(:kristine)
#iterates through keys
#prints out each one of the keys
people.each_key do |key|
  puts key
end

#iterates through values
#prints out each one of the values
people.each_value do |value|
  puts value
end

#add an element to a hash
people[:leann] = 42
p people
people_2 = people.invert #swap key/value -> value/key
#append people_2 hash to end of people hash
people.merge(people_2)
#converts hash to an array
people.to_a #returns => [[:jordan, 32], [:tiffany, 27], [:kristine, 10], [:heather, 29]]
people.keys #returns, converts keys in an array => [:jordan, :tiffany, :kristine, :heather]
people.values #returns, converts values in an array =>  => [32, 27, 10, 29]
