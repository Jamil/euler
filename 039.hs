isInt x = x == fromInteger (round x)

tr p = [((a,b,c), a + b + c) | a <- [1..p], b <- [1..p], let c = sqrt (a^2 + b^2), isInt c, a + b + c < p ]

dict n = [(x,0) | x <- [1..n]]

