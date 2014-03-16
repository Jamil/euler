#include <iostream>
#include <unordered_set>

#define MAX_NUM 28123

using namespace std;

int main() {
  int sieve[MAX_NUM] = {0};

  for (int i = 1; i < MAX_NUM; i++) {
    // Find divisors
    if (!sieve[i]) {
      int sumdivisors = 0;
      for (int j = 1; j < i - 1; j++) {
        if (i % j == 0) {
          sumdivisors += j;
        }
      }

      // If abundant, mark all multiples as abundant
      if (sumdivisors > i) {
        for (int j = 0; j < MAX_NUM; j++) {
          if (j % i == 0)
            sieve[j] = 1;
        }
      }
    }
  }

  int ab[MAX_NUM] = {0};
  unordered_set<int> ab_set;

  int inserted = 0;
  for (int i = 0; i < MAX_NUM; i++) {
    if (sieve[i] == 1) {
      ab[inserted] = i;
      ab_set.insert(i);
      inserted++;
    }
  }

  int notar[MAX_NUM] = {0};
  int notcount = 0;
  // Check for numbers that cannot be expressed a sum of abundant numbers
  for (int i = 1; i < MAX_NUM; i++) {
    printf("%d\n", i);
    bool can = false;
    for (int j = 1; ab[j] != 0 && !can; j++) {
      int diff = i - ab[j];

      //printf("\tChecking %d + %d = %d\t", ab[j], diff, i);
      // If diff exists in set, break.
      if (diff <= 0 || ab[j] > i) {
        can = false;
        break;
      }
      else if (ab_set.count(diff)) {
        printf("Exists.");
        can = true;
      }
      //printf("\n");
    }
    if (!can) {
      notar[notcount] = i;
      notcount++;
    }
  }

  int count = 0;
  for (int i = 0; notar[i] != 0; i++) {
    printf("%d\n", notar[i]);
    count += notar[i];
  }
  printf("\n%d\n", count);

}
