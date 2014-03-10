-- Slowwwwww. 

sumdivisors n = sum [x | x <- [1..(n - 1)], n `mod` x == 0] 
amicables = [x | x <- [1..10000], x == (sumdivisors $ sumdivisors x), x /= (sumdivisors x)]
