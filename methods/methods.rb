#methods
#declaring the method
def baseball_team_list
  #syntax
  ["A's", "Angels", "Astros"]
end

#Methods in ruby returns whatever is at the
#end of the method's body

def second_team_list
  #syntax
  x = 15
  #where the keyword makes sence using
  return ["A's", "Angels", "Astros"] if x == 10
  ["Yankees", "Mets"]
end


#call the method
p second_team_list

#class method and intance methods
full_name = Proc.new { |first, last| first + " " + last}
p full_name["Jordan","Hudgens"]
p full_name.call("Jordan", "Hudgens")
