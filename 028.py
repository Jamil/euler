import math

def printSpiral(spiral):
  for i in enumerate(spiral):
    print i

def createSpiral(n):
  spiral = [[0 for j in range(n)] for k in range(n)]
  return spiral

def fillLevel(x, i, j, spiral, level):
  direction = 0       # DOWN, RIGHT, UP, LEFT
  dcount = 0
  same = False
  x_orig = x

  while not same:
    if spiral[i][j] == x_orig:
      same = True
    else:
      spiral[i][j] = x
    
    if dcount == 2 * level:
      dcount = 0
      direction = direction + 1
    
    if direction == 0:
      i = i + 1
    elif direction == 1:
      j = j - 1
    elif direction == 2:
      i = i - 1
    elif direction == 3:
      j = j + 1
    
    dcount = dcount + 1
    x = x + 1

  return spiral
  
def fillSpiral(spiral, n):
  center = n / 2 + 1
  i = center    # Starting point
  j = center

sp = createSpiral(11)
sp = fillLevel(9, 3, 7, sp, 2)
printSpiral(sp)
