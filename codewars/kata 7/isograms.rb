require 'set'

def is_isogram(string)
   if string.empty?
     true
   else
     string.scan(/\w/).to_set.length == string.length ? true : false
   end
end

p is_isogram("lucas")
p is_isogram("")
p is_isogram("lucass")
