import qualified Data.Map as Map 
import Data.List
import Data.Ord

isInt x = x == fromInteger (round x)

tr p = [((a,b,c), a + b + c) | a <- [1..p], b <- [1..p], let c = sqrt (a^2 + b^2), isInt c, a + b + c < p ]

dict n = [(x,0) | x <- [1..n]]

count x xs = length $ filter (== x) xs

occurrences :: Eq a => [a] -> [(a,Int)]
occurrences xs = nub [(x, count x xs) | x <- xs]

solution = maximumBy (comparing snd) (occurrences perimeters)
  where triangles = tr 1000
        perimeters = map snd triangles
