isInt x = x == fromInteger (round x)

isTriangle n = isInt a || isInt b 
  where pair = solveQuadratic 1 1 (-2*n)
        a = fst pair 
        b = snd pair 

solveQuadratic a b c = (ans1,ans2)
  where ans1 = (-1 * b + sqrt (b^2 - 4 * a * c)) / (2*a)
        ans2 = (-1 * b - sqrt (b^2 - 4 * a * c)) / (2*a)
