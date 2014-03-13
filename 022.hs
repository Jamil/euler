main = do
  inh <- (readFile "022-names.txt")
  return $ parsestring inh

splitLoc :: String -> Int
splitLoc x
  | null x = 0
  | x == "" = 0
  | (head x == ',') = 0 
  | otherwise = (1 + (splitLoc $ tail x)) 

parsestring :: String -> [String]
parsestring "" = [""]
parsestring x =
  x1 : parsestring x2
    where (x1, x2) = splitAt (splitLoc x)  x
