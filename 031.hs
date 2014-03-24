coins = [200, 100, 50, 20, 10, 5, 2, 1]

coinsums n = (maxSum n) : distributeAll (maxSum n)

maxSum n = distribute [0,0,0,0,0,0,0,0] 0 n

distribute xs 8 carry = xs
distribute (x:xs) i carry =
  x + (div carry (coins !! i)) : distribute xs (i + 1) (mod carry (coins !! i))

distributeFirst (x:xs) i
  | x == 0 = x : distributeFirst xs (i + 1)
  | otherwise = (x - 1) : distribute xs (i + 1) (coins !! i)

distributeAll xs 
  | (all (== 0) (take (length coins - 1) xs)) = []
  | otherwise = distributeFirst xs 0 : (distributeAll (distributeFirst xs 0))
