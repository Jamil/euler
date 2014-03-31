import Debug.Trace

coins = [200,100,50,20,10,5,2,1]

coinsum n = coinsums coins 0

coinsums :: [Int] -> Int -> Int
coinsums xs total | trace ("List: " ++ show xs ++ ", Total: " ++ show total) False = undefined
coinsums [1] total = length $ filter (== 200) possibleSums
  where possibleSums = [total + m | m <- [0..200]]
coinsums xs total = length $ map (coinsums othercoins) newtotals
  where
    denomination = head xs
    othercoins = tail xs
    newtotals = (map (+ total) [0..(div 200 denomination)])
