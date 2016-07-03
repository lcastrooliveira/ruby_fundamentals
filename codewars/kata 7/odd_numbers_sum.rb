def row_sum_odd_numbers(n)
  a = (1..n).inject(&:+)
  b = ((1..a*2).step(2).to_a).last(n).inject(&:+)
  #p b
end

row_sum_odd_numbers(1)
row_sum_odd_numbers(3)
row_sum_odd_numbers(4)
row_sum_odd_numbers(5)

a = row_sum_odd_numbers(13)
#p a
#row_sum_odd_numbers(19)
