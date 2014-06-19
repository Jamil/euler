toRevList 0 = []
toRevList x = x `mod` 10 : toRevList (x `div` 10)

toList 0 = []
toList x = reverse $ toRevList x

intList n = foldr (++) [] fullList
  where fullList = map toList [1..n]

nums = map (intList 1000000 !!) [10^x - 1 | x <- [0..6]]

solution = foldr (*) 1 nums
