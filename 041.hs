import Data.List

perms [] = [[]]
perms xs = [x:ys | x <- xs, ys <- (perms (delete x xs))]

isEmpty xs = length xs == 0

intRoot = floor . sqrt . fromInteger

isPrime n = isEmpty [x | x <- [2..(intRoot n)], mod n x == 0]

joinList [] = 0
joinList xs = head xs * (10 ^ pwr) + (joinList $ tail xs)
  where pwr = length xs - 1

solution = head [x | x <- (perms $ reverse [1..9]), isPrime $ joinList x]
