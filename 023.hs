import Data.Set (Set)
import qualified Data.Set as Set

makesieve 0 = []
makesieve x = 
  0 : makesieve (x - 1)

marknum n s = 
  (take (n - 1) s) ++ [1]

markmult n s
  | n > (length s) = s
  | otherwise = (marknum n s) ++ (markmult n (drop n s))

sumdivisors n = sum [x | x <- [1..(n-1)], n `mod` x == 0]

arecur :: Int -> [Int] -> [Int]
arecur n sieve  
  | null sieve = []
  | head sieve == 1 = n : (arecur (n + 1) (tail sieve)) 
  | head sieve == 0 = 
      if (sumdivisors n > n)
        then n : (arecur (n + 1) (tail sieve))
        else (arecur (n + 1) (tail sieve))

abundants :: Int -> [Int]
abundants x =
  arecur 0 (makesieve x)

seta x = Set.fromList (abundants x)

issum n = head [x | x <- (abundants n), (Set.member (n - x) (Set.fromList $ abundants n))]

