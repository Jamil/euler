def markSieve(n,sieve):
  for i in (1, len(sieve)):
    if (i % n == 0):
      sieve[i] = 1

def isPrime(n):
  for i in (1, sqrt(n)):
    if (n % i == 0):
      return False
  return True

def findPrimes(n):
  primes = []
  sieve = [0] * n
  for i in (1,n):
    if (isPrime(i)):
      primes.append(i)
  return primes

def quadprimes(n):
  maxNum = 0
  for i in (-999,999):
    for j in (-999,999):
      num = tryQuadratic(i,i,j)
      if (num > maxNum):
        maxNum = num

def main():
  print "Hello"
  print findPrimes(10)
