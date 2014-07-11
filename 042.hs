import System.IO.Unsafe
import Data.Char

allWords = init $ parsestring $ unsafePerformIO $ readFile "042.txt"

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

stripchars :: String -> String
stripchars "" = []
stripchars (x:xs) 
  | x == '\"' = stripchars xs
  | x == '\\' = stripchars xs
  | x == ',' = stripchars xs
  | otherwise = x : (stripchars xs)

isInt x = x == fromInteger (round x)

isTriangle n = isInt a || isInt b 
  where pair = solveQuadratic 1 1 (-2*n)
        a = fst pair 
        b = snd pair 

solveQuadratic a b c = (ans1,ans2)
  where ans1 = (-1 * b + sqrt (b^2 - 4 * a * c)) / (2*a)
        ans2 = (-1 * b - sqrt (b^2 - 4 * a * c)) / (2*a)

charValue c = ord(c) - 64

wordValue word = foldr (+) 0 allValues
  where allValues = map charValue word

boolMap = map isTriangle $ map fromIntegral wordValues
  where wordValues = (map wordValue allWords)

solution = length (filter (== True) boolMap)
