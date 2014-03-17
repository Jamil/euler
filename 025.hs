-- k is the current number. let fib[k] be the current fibonacci number. Then i = fib[k-2] and j = fib[k-1]
-- Therefore, fib[k] = fib[i] + fib[j]
fibr :: Integer -> Integer -> Integer -> Integer
fibr i j k 
  | (i + j) > (10^999) = k
  | otherwise = (fibr j (i + j) (k + 1))

fib = 
  fibr 1 1 3
