#include <stdio.h>

int coinsums(int n) {
  int coins[] = {1,2,5,10,20,50,100,200};
  int coinc = 8;
  
  if (n == 0)
    return 1;

  int sum = 0;
  for (int i = 0; i < 8; i++)
    sum += (n - coins[i] >= 0) ? coinsums(n - coins[i]) : 0;

  printf("N = %d, Sum: %d\n", n, sum);

  return sum;
}

int main() {
  printf("%d\n", coinsums(5));
}
