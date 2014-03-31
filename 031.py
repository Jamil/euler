coins = [1,2,5,10,20,50,100,200]

def coinsums(ls, total):
  head, tail = ls[0], ls[1:]
  print "Working on " + str(head)

  if head == 200:
    if total == 200:
      return 1
    else:
      return 0
  else:
    count = 0
    for i in range(0,(200/head)):
      count = count + coinsums(tail, total + i * head)
    return count

def naivesums():
  count = 0
  for a in range(0,2):
    for b in range(0,3):
      for c in range(0,5):
        for d in range(0,11):
          for e in range(0,21):
            for f in range(0,41):
              for g in range(0,101):
                for h in range(0,201):
                  total = a * 200 + b * 100 + c * 50 + d * 20 + e * 10 + f * 5 + g * 2 + h;
                  if total == 200:
                    count = count + 1
                    print str(a) + " : " + str(b) + " : " + str(c) + " : " + str(d) + " : " + str(e) + " : " + str(f)
                  if total > 200:
                     break
  return count

print naivesums()
