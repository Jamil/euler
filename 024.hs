import Data.List

-- Permutations from 0 to n
perms :: [Int] -> [[Int]]
perms [] = [[]]
perms n = [x:ps | x <- n, ps <- perms (n \\ [x])]

