import Data.Set (Set)
import qualified Data.Set as Set

coins = [1, 2, 5, 10, 20, 50, 100, 200]

coinsums 0 = [[]]
coinsums n = [x:ps | x <- coins, n >= x, ps <- (coinsums (n - x))]

organize [] = []
organize (x:xs) = [(length $ filter (== p) x) | p <- coins] : (organize xs)

removedups x = Set.toList(Set.fromList(x))
