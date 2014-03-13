-- Okay, so this is *sort of* cheating, because I'm assuming the solution was meant to be written in a low level language that doesn't support these crazy arbitrary-size integers. But oh well, it's my first Haskell program ;)

fact 0 = 1
fact x = else x * fact (x - 1)

sumdigits 0 = 0
sumdigits x = x `mod` 10 + sumdigits (div x 10)
