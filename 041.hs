import Data.List

perms [] = [[]]
perms xs = [x:ys | x <- xs, ys <- (perms (delete x xs))]

intRoot = floor . sqrt . fromInteger

isPrime n = null [x | x <- [2..(intRoot n)], mod n x == 0]

joinList [] = 0
joinList xs = head xs * (10 ^ pwr) + (joinList $ tail xs)
  where pwr = length xs - 1

pandigitals 0 = []
pandigitals n = (perms $ reverse [1..n]) ++ (pandigitals (n - 1))

solution = head [x | x <- pandigitals 9, isPrime $ joinList x]
