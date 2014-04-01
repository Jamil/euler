import Data.List
import Debug.Trace

tolist 0 = []
tolist n = mod n 10 : tolist (div n 10)  

samedigit :: Int -> Int -> Bool
samedigit x y = (length $ intersect xs ys) == 1
  where 
    xs = tolist x
    ys = tolist y

generate = [(x,y) | x <- [10..99], y <- [10..99], x `mod` 10 /= 0, y `mod` 10 /= 0, x `mod` 11 /= 0, y `mod` 11 /= 0, x < y, ispair x y]

ispair :: Int -> Int -> Bool
-- ispair x y | trace (show x ++ " " ++ show y) False = undefined 
ispair x y = (samedigit x y) && nonzero && ((toRational subx) / (toRational suby)) == ((toRational x) / (toRational y))
  where
    xs = tolist x
    ys = tolist y
    subx = head $ xs \\ [head $ intersect xs ys]
    suby = head $ ys \\ [head $ intersect xs ys]
    nonzero = suby /= 0

makefrac x = (product $ map fst x, product $ map snd x)

simplify x = (toRational $ fst x) / (toRational $ snd x)
