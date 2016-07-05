# Given the Fibonacci sequence:
# F1 = 1
# F2 = 1
# F3 = 2
# F4 = 3 ....
# Find the index of the first term in the Fibonacci sequence that contains 1000 digits

def fibonacci_digit_counter
  num1, num2, i = -1 , 0, 1
  while i.to_s.length < 1000
    num1 += 1
    i, num2 = num2, num2 + i
  end
  num1
end

#4782
p fibonacci_digit_counter
