def sumLevel(n):
  if n == 0:
    return 1
  
  sum = 0
  cornerValue = (2*n+1)**2    # Value in top-right corner is (n+1)^2
  length = 2*n              # Length of square edge (excluding one vertex)
  for i in range(0, 4):
    sum = sum + (cornerValue - length * i)

  print str(n) + "\t" + str(sum)

  return sum

def sumTotal(levels):
  levels = levels/2 + 1
  sum = 0
  for i in range(0, levels):
    sum = sum + sumLevel(i)
  return sum 

print sumTotal(1001)
