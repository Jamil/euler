import Data.Set (Set)
import qualified Data.Set as Set

import Data.Map (Map)
import qualified Data.Map as Map

coins = [1, 2, 5, 10, 20, 50, 100, 200]

fix n = removedups $ organize n

coinsums = (map coinsums' [0..] !!)
  where
    coinsums' 0 = [[]]
    coinsums' n = [x:ps | x <- coins, n >= x, ps <- (coinsums (n - x))]

organize [] = []
organize (x:xs) = [(length $ filter (== p) x) | p <- coins] : (organize xs)

removedups x = Set.toList(Set.fromList(x))
