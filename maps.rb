#map is used to perform operations in the collection`s methods
["1","23.0","0","4"].map {|x| x.to_i}
#returns [1,23,0,4]
#professional rubist syntax
["1","23.0","0","4"].map (&:to_i)
#another example
("a".."g").to_a.map {|i| i * 2}
#returns ["aa","bb","cc","dd"]
#Create hashes with the Funcion Hash
Hash[[1,2.1,3.33,0.9].map {|x| [x,x.to_i]}]
#Creates a hash, with the floats as key and it's integers as values to
# each element
#returns {1=>1, 2.1=>2, 3.33=>3, 0.9=>0}

#Why?
=begin
2.3.0 :040 > Hash[[["A", 1], ["dynamic", 7], ["open", 4], ["source", 6], ["programming", 11], ["language", 8]]]
 => {"A"=>1, "dynamic"=>7, "open"=>4, "source"=>6, "programming"=>11, "language"=>8}
2.3.0 :041 > Hash[["A", 1], ["dynamic", 7], ["open", 4], ["source", 6], ["programming", 11], ["language", 8]]
 => {["A", 1]=>["dynamic", 7], ["open", 4]=>["source", 6], ["programming", 11]=>["language", 8]}
=end
#Example, how to make something url friendly
{:a => "foo", :b => "bar"}.map {|a,b| "#{a}=#{b}"}.join('&')
#returns a=foo&b=bar
