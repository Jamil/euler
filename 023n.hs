sumdivisors n = sum [x | x <- [1..(n-1)], n `mod` x == 0]
abundant = [x | x <- [1..28123], x < (sumdivisors x)]
issum x = [(q, s) | q <- (abundant), s <- (abundant), q + s == x]
nota n = [x | x <- [1..n], null (issum x)]
