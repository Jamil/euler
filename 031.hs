emptyWallet = [(0, 200), (0, 100), (0, 50), (0, 20), (0, 10), (0, 5), (0, 2), (0, 1)]

-- Distribute carry over the list xs
distribute [] carry = []
distribute (x:xs) carry = 
  balance + (carry `div` denomination) : distribute xs (carry `mod` denomination) 
    where 
      denomination = snd x
      balance = fst x

