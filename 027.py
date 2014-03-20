import math
import array

def isPrime(n):
  for i in range(2, int(math.sqrt(abs(n)) + 1)):
    if n % i == 0:
      return False
  return True

def tryQuadratic(b,c):
  # Try all x in x^2 + bx + c
  allprimes = True
  x = 0
  while allprimes:
    ans = (x**2) + (b*x) + c
    if not isPrime(ans):
      allprimes = False
    x = x + 1
  return x - 2

def quadprimes(min):
  maxNum = 0
  maxI = -1
  maxJ = -1
  for i in range(min,abs(min)):
    for j in range(min, abs(min)):
      num = tryQuadratic(i,j)
      if num > maxNum:
        maxNum = num
        maxI = i
        maxJ = j
  print str(maxI) + ", " + str(maxJ)
  return maxI * maxJ

print quadprimes(-999)
