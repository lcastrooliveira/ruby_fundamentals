#2^8 = 32 -> 3+2 = 5, how much is 2^2000 ?
p (2 ** 1000).to_s.split("").map(&:to_i).inject(&:+)
