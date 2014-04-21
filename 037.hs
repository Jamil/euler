import Debug.Trace

allprimes = [x | x <- [2..], isPrime x]
isPrime 0 = False
isPrime 1 = False
isPrime n = sum [x | x <- [2..(floor (sqrt $ fromInteger n))], n `mod` x == 0] == 0
truncatableprimes = [x | x <- (allprimes), truncatable x, rtruncatable x]

-- truncatable x | trace (show x) False = undefined 
truncatable 0 = True
truncatable x = isPrime x && (truncatable $ div x 10)

log10 0 = 0
log10 x = 1 + log10 (div x 10)

-- rtruncatable x | trace (show x) False = undefined 
rtruncatable x  
  | x < 10 = isPrime x
  | otherwise = isPrime x && (rtruncatable truncated)
  where 
    prefix = div x (10^((log10 x)-1))
    truncated = mod x (10 ^ ((log10 x) - 1))
