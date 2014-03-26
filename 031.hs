emptyWallet = [(0, 200), (0, 100), (0, 50), (0, 20), (0, 10), (0, 5), (0, 2), (0, 1)]

-- Distribute carry over the list xs 
distribute carry [] = []
distribute carry (x:xs) = 
  (balance + (carry `div` denomination), denomination) : distribute (carry `mod` denomination) xs
    where 
      denomination = snd x
      balance = fst x

-- Distributes one coin of denomination 'n' over the lower denominations 
distributeCoin n [] = [] -- Not found; should never happen
distributeCoin n (x:xs)
  | n == denomination && balance > 0 = 
      ((balance - 1), denomination) : distribute denomination xs
  | otherwise = 
      x : distributeCoin n xs
  where 
    denomination = snd x
    balance = fst x

decomposition n = distributeCoin n $ distribute n emptyWallet

distributeEach xs 8 = []
distributeEach xs i  
  | balance /= 0 = distributeCoin denomination xs : distributeEach xs (i + 1)
  | otherwise = distributeEach xs (i + 1)
  where 
    denomination = snd (xs !! i)
    balance = fst (xs !! i)

addLists [] [] = []
addLists (a:as) (b:bs) = a + b : addLists as bs 

-- Only show first element of tuple
f = map fst

