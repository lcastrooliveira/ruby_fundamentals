#2520 is the smallest number that can be divided by each of the numbers from 1
#to 10 without any remainder.
#What is the smallest positive number that is evenly divisible by all of the
#numbers from 1 to 20 ?
#reduce:
#Combines all elements of enum by applying a binary operation, specified by a
#block or a symbol that names a method or operator.
#lcm -> least common multiple
p (1..20).to_a.reduce(:lcm)
