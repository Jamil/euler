import Debug.Trace

rotatedprimes = primerotate (splitprimes 1000000) 0 6

isPrime :: Integer -> Bool
isPrime n = sum [x | x <- [2..(floor (sqrt $ fromInteger n))], n `mod` x == 0] == 0

splitInt 0 = []
splitInt x = mod x 10 : splitInt (div x 10)

joinInt [] = 0
joinInt (x:xs) = 10 * (joinInt xs) + x

allprimes n = [x | x <- [2..n], isPrime x]

splitprimes n = map splitInt (allprimes n)

primerotate xs n limit | trace (show n) False = undefined
primerotate xs n limit
  | n == limit = xs
  | otherwise = primerotate (map splitInt (filter isPrime rotatedprimes)) (n + 1) limit
  where 
    rotatedprimes = map joinInt (map rotate xs)

rotate (l:ls) = ls ++ [l]
