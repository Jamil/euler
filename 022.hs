import Data.Char (ord) 

main = do
  inh <- (readFile "022-names.txt")
  return (countscore (mergesort $ parsestring inh) 0)

splitLoc :: String -> Int
splitLoc x
  | null x = 0
  | x == "" = 0
  | (head x == ',') = 0 
  | otherwise = (1 + (splitLoc $ tail x)) 

parsestring :: String -> [String]
parsestring "" = [""]
parsestring x =
  (stripchars x1) : parsestring x2
    where (x1, x2) = splitAt (1 + splitLoc x)  x

mergesort :: (Ord a) => [a] -> [a]
mergesort [] = []
mergesort (x:[]) = x:[]
mergesort (x:y:[]) = 
  if (x < y)
    then [x, y]
    else [y, x]
mergesort x =
  merge (mergesort x1) (mergesort x2)
    where (x1, x2) = splitAt (div (length x) 2) x

merge :: (Ord a) => [a] -> [a] -> [a]
merge [] [] = []
merge xs [] = xs
merge [] xs = xs
merge (a:x) (b:y) = 
  if (a < b)
    then a : (merge x (b : y))
    else b : (merge (a : x) y)

stripchars :: String -> String
stripchars "" = []
stripchars (x:xs) 
  | x == '\"' = stripchars xs
  | x == '\\' = stripchars xs
  | x == ',' = stripchars xs
  | otherwise = x : (stripchars xs)

score :: String -> Int
score "" = 0
score (x:xs) = 
  (ord x) - 64 + (score xs)

countscore :: [String] -> Int -> Int
countscore [] i = 0
countscore (x:xs) i =
  (i * score x) + countscore xs (i + 1)


