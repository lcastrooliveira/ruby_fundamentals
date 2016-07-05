#Lexicographic permutations
#A permutation is an ordered arrangement of objects. For example
#3124 is one possible permutation of the digits 1,2,3 and 4.
#if all of the permutations are listed numerically, we call it
#the lexicographic order. The lexicographic permutations of 0, 1 and 2 are:
# 012 021 102 120 201 210
# what are the milionth lexicographic permutation of the digits 0, 1, 2, 3, 4, 5
# 6 ,7, 8 and 9 ?

#permutation, creates permutation of the numbers
#to_a[999_999] -> converts the permutations to an array.
#and gets the 1.000.000th element. Each element is an array of the digts that
#compose the permutation
#join -> join the element array into a string of numbers
p [0,1,2,3,4,5,6,7,8,9].permutation.to_a[999_999].join
