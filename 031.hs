emptyWallet = [(0, 200), (0, 100), (0, 50), (0, 20), (0, 10), (0, 5), (0, 2), (0, 1)]

-- Distribute carry over the list xs
distribute carry [] = []
distribute carry (x:xs) = 
  balance + (carry `div` denomination) : distribute (carry `mod` denomination) xs
    where 
      denomination = snd x
      balance = fst x

