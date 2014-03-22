allPowers = take 6 [x | x <- [2..10^6], powerSum x == x]

powerSum n = sum [x^5 | x <- (getDigits n)]

getDigits :: Integer -> [Integer]
getDigits x 
  | div x 10 == 0 = [x]
  | otherwise = (x `mod` 10) : (getDigits $ div x 10)
