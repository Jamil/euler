import Data.Set (Set)
import qualified Data.Set as Set

distinctPowers n = length $ removeDups $ powersOf n n

powersOf a b = [x^y | x <- [2..a], y <- [2..b]]
removeDups l = Set.toAscList(Set.fromList(l))

