coins = [200,100,50,20,10,5,2,1]

coinsum n = coinsums coins 0

coinsums [1] total = length $ filter (== 200) possibleSums
  where possibleSums = [total + m | m <- [0..200]]
coinsums xs total = length $ [coinsums othercoins (total + num * denomination) | num <- [0..(div 200 denomination)]]  
  where
    denomination = head xs
    othercoins = tail xs
