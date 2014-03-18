deletelast n [] = []
deletelast 0 x = x
deletelast n x = deletelast (n - 1) (init x)

takelast n x = 
  x2
  where (x1, x2) = splitAt (length x - n) x

rep [] = []
rep x = repsequence x []

repsequence x [] = repsequence (init x) (last x : [])
repsequence x y  
  | (length y > length x) = []
  | otherwise =
      if ((takelast (length y) x) == y)
        then y
        else repsequence (init x) (last x : y)

makelist :: (RealFrac a) => a -> [Int]
makelist f 
  | f < 1 = makelist (f * 10)
  | fromIntegral (floor f) == f = []
  | otherwise = (mod (floor f) (10 :: Int)) : makelist (f * 10)

longest :: Int -> [(Int, Int)]
longest 0 = [(0,0)]
longest n = 
  ((length (rep (makelist (1/((fromIntegral n) :: Double))))), n) : (longest (n - 1))
