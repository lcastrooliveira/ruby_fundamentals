#Factorial digit sum
# n! means n x (n-1) x ... 3 x 2 x 1
#For example, 10! = 10 x 9 x 8 ... 3 x 2 x 1 = 3628800
#and the sum of the digits in the number 10! is 3+6+2+8+8+0+0 = 27
#Find the sum of the digits in the number 100!
#This is my solution :)
def factorial_sum n
  factorial(n).to_s.split('').map(&:to_i).inject(:+)
end

def factorial n
  return 1 if n == 1
  n * factorial(n -1 )
end

p factorial_sum 100
