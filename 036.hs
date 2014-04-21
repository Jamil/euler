palindromes = [x | x <- [1..(10^6)], isPalindrome (toList x) && isPalindrome (toBinary x)]

toList 0 = []
toList n = mod n 10 : toList (div n 10)

toBinary 0 = []
toBinary n = mod n 2 : toBinary (div n 2)

isPalindrome xs = xs == (reverse xs)
