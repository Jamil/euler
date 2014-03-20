import math
import array

def markSieve(n,sieve):
  for i in range(1, len(sieve) - 1):
    if i % n == 0:
      sieve[i] = 1
  return sieve

def isPrime(n):
  for i in range(2, int(math.sqrt(n) + 1)):
    if n % i == 0:
      return False
  return True

def findPrimes(n):
  primes = []
  sieve = [0]*n
  sieve[1] = 1
  for i in range(2, len(sieve)):
    if isPrime(i):
      sieve = markSieve(i, sieve)
      primes.append(i)
  return primes

def tryQuadratic(a,b,c):
  allprimes = True
  x = 0
  while allprimes:
    

def quadprimes(n):
  maxNum = 0
  for i in range(-999,999):
    for j in range(-999,999):
      num = tryQuadratic(i,i,j)
      if num > maxNum:
        maxNum = num

print findPrimes(100)
