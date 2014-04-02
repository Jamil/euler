splitInt :: Int -> [Int]
splitInt 0 = []
splitInt x = mod x 10 : splitInt (div x 10)

fact 0 = 1
fact 1 = 1
fact n = n * fact (n - 1)

factsum xs = sum $ map fact xs

sumfact = [x | x <- [1..], factsum (splitInt x) == x]
