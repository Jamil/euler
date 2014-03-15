sieve 0 = []
sieve x = 
  0 : sieve (x - 1)

marknum n s = 
  (take (n - 1) s) ++ [1]

markmult n s
  | n > (length s) = s
  | otherwise = (marknum n s) ++ (markmult n (drop n s))
