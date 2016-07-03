string = "The quick 12 brown foxes jumped over the 10 lazy dogs"

p string =~ /z/
#It is case sensitive
p string =~ /z/ ? "Valid" : "Invalid"
p string =~ /Z/ ? "Valid" : "Invalid"
#i - ignore case
p string =~ /Z/i ? "Valid" : "Invalid"

#nil always evaluates to false
p nil ? "Yes" : "No"
#find multiple numbers
p string.to_enum(:scan,/\d+/).map {Regexp.last_match}
