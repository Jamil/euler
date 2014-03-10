#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

int numDays(int month, int year) {
  switch(month) {
    case 0: // Jan
      return 31;
      break;
    case 1: // Feb
      if (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0))
        return 29;
      else
        return 28;
      break;
    case 2: // March
      return 31;
      break;
    case 3: // April
      return 30;
      break;
    case 4: // May
      return 31;
      break;
    case 5: // June
      return 30;
      break;
    case 6: // July
      return 31;
      break;
    case 7: // August
      return 31;
      break;
    case 8: // September
      return 30;
      break;
    case 9: // October
      return 31;
      break;
    case 10: // November
      return 30;
      break;
    case 11: // December
      return 31;
      break;
    default:
      abort();
  }
}

int main() {
  int day_abs = 0;
  int day_rel = 0;
  
  int week_abs = 0;
  int week_rel = 0;

  int mon_abs = 0;
  int mon_rel = 0;
  
  int yr_abs = 1900;
  bool done = false;
  
  int count = 0;

  while (!done) {
   
    // Check if Sunday and first of month
    if (yr_abs > 1900 && day_abs % 7 == 6 && day_rel == 0) {
      count++;
      printf("%d / %d / %d\n", day_rel + 1, mon_rel + 1, yr_abs);
    }

    // Update first
    day_abs++;
    day_rel++;

    if (day_rel == numDays(mon_rel, yr_abs)) {
      day_rel = 0;
      mon_rel++;
      mon_abs++;
    }

    if (mon_rel == 12) {
      yr_abs++;
      mon_rel = 0;
    }

    if (yr_abs == 2001)
      done = true;

  }
 
  printf("%d\n", count);

  return 0;
}

