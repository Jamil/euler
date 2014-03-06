//
//  main.cpp
//  14
//
//  Created by Jamil Dhanani on 2/24/2014.
//  Copyright (c) 2014 Jamil Dhanani. All rights reserved.
//

#include <iostream>

using namespace std;

int collatz_count(unsigned long int n) {
    int count = 0;
    unsigned long int i = n;
    while (i != 1) {
        //cout << i << "-> ";
        if (!(i % 2))
            i = i/2;
        else
            i = 3 * i + 1;
        count++;
    }
    count++;
    return count;
}

int main(int argc, const char * argv[])
{
    int maxCount = 0;
    int maxNum = 0;
    
    for (int i = 2; i <= 1e6; i++) {
        cout << i << endl;
        int count = collatz_count(i);
        if (count > maxCount) {
            maxCount = count;
            maxNum = i;
        }
    }
    
    cout << maxCount << endl;
    cout << maxNum << endl;
}

