-- Slowwwwww. Could probably be improved by putting the numbers into a hash table first (key = sumdivisors x, value = x), but right now is likely n^2 assuming this list comprehension compiles to the naive implementation. And since I believe Haskell implements lists using, well, linked lists, it's not going to be particularily fast.

sumdivisors n = sum [x | x <- [1..(n - 1)], n `mod` x == 0] 
amicables = [x | x <- [1..10000], x == (sumdivisors $ sumdivisors x), x /= (sumdivisors x)]
