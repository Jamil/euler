permutations :: [Char]
permutations = [a : b : c : d : e : f : g : h : i : [] | a <- ['0'..'9'], b <- ['0'..'9'], c <- ['0'..'9'], d <- ['0'..'9'], e <- ['0'..'9'], f <- ['0'..'9'], g <- ['0'..'9'], h <- ['0'..'9'], i <- ['0'..'9']] !! 1000000
