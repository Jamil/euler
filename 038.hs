
prSpace = [5000..9999]
pairs = [(a,a*2) | a <- prSpace]

toList 0 = []
toList x = x `mod` 10 : toList (x `div` 10)

listify pair = reverse (toList a) ++ reverse (toList b)
  where a = fst pair 
        b = snd pair

qsort [] = []
qsort (x:xs) = qsort lesser ++ [x] ++ qsort greater
  where lesser = filter (< x) xs
        greater = filter (>= x) xs

isPandigital xs  = (qsort xs) == [1..9]

check pairs = filter isPandigital $ map listify pairs

joinlist [] = 0
joinlist xs = head xs * (10 ^ pwr) + (joinlist $ tail xs)
  where pwr = length xs - 1

solution = maximum $ map joinlist $ check pairs
