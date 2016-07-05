=begin
let de(n) be defined as the sum of proper divisors of n (numbers less than n
which divide entirely into n).
If d(a) = b and d(b) = a, where a = b, then a and b are an amicable pair and
each of a and b are called amicable numbers.

For example, the proper divisors of 220 are 1,2,4,5,10,11,20,22,44,55 and 110;
therefore d(220) = 284. The proper divisors of 284 are 1,2,4,71 and 142; so
d(284) = 220.
Evaluate the sum of all amicable numbers under 1000.
=end

require 'mathn'
#metaprogramming to open up class Integer
class Integer
  def dsum
    return 1 if self < 2
    pd = prime_division.flat_map { |n,k| [n]*k }
    ([1]+(1...pd.size).flat_map{|e| pd.combination(e).map{|f| f.reduce(:*) }}).uniq.inject(:+)
  end
end

def find_d_sum(n)
  n.times.inject do |sum,cur|
    other = cur.dsum
    (cur != other && other.dsum == cur) ? sum + cur : sum
  end
end

p find_d_sum(10000)
