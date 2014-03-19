-- List Helper Functions
-- Various functions to help in the processing of lists
deletelast n [] = []
deletelast 0 x = x
deletelast n x = deletelast (n - 1) (init x)

takelast n x = 
  x2
  where (x1, x2) = splitAt (length x - n) x

-- Repeater Functions

rep [] = []
rep x = repsequence x []

repsequence x [] = repsequence (init x) (last x : [])
repsequence x y  
  | (length y > length x) = []
  | otherwise =
      if ((takelast (length y) x) == y)
        then max y (repsequence (init x) (last x : y))
        else repsequence (init x) (last x : y)

-- does y repeat in all x?
doesrepeat [] y = True
doesrepeat x y 
  | (length x < (length y)) = False
  | otherwise = 
      if ((takelast (length y) x) == y)
        then (doesrepeat (deletelast (length y) x) y)
        else False

-- Decomposes a list into its smallest repeating element (if any)
-- Try first n elements of x
atomize [] n = []
atomize x n =
  if (doesrepeat x (take n x))
    then (take n x)
    else atomize x (n + 1)

declist :: (Integral a) => a -> [a]
declist 0 = [];
declist x = (declist (div x 10)) ++ [mod x 10]

fullproc n = atomize (rep (declist $ bigdiv n)) 1

bigdiv n = (div (10^1000) n) 

-- Generation
longest 1 = []
longest n = ((length (fullproc n)), n) : (longest (n - 1))
  
