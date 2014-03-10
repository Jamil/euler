-- Okay, so this is *sort of* cheating, because I'm assuming the solution was meant to be written in a low level language that doesn't support these crazy arbitrary-size integers. But oh well, it's my first Haskell program ;)

fact x = 
  if x == 0
    then 1
    else x * fact (x - 1)

sumdigits x = 
  if x == 0
    then 0
    else x `mod` 10 + sumdigits (div x 10)
