import Data.List
import Data.Set (Set)
import qualified Data.Set as Set

perms [] = [[]]
perms n = [x:ps | x <- n, ps <- perms (n \\ [x])]

cleanlist xs = Set.toList(Set.fromList(filter (/= -1) xs))

checklist xs
  | multiplicand1 * multiplier1 == product = product
  | multiplicand2 * multiplier2 == product = product
  | otherwise = -1
  where
    multiplicand1 = head xs
    multiplier1 = toInt $ drop 1 (take 5 xs)
    multiplicand2 = toInt $ take 2 xs
    multiplier2 = toInt $ drop 2 (take 5 xs)
    product = toInt $ drop 5 xs

toInt [] = 0
toInt (x:xs) = x * (10^(length xs)) + toInt xs
