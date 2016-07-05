require 'prime'

prime_array = Prime.take_while {|p| p < 2_000_000} #2 millions, ruby allows that :)

total_count = prime_array.inject {|sum, x| sum + x}

#142.913.828.922
p total_count
