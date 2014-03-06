//
//  main.cpp
//  10
//
//  Created by Jamil Dhanani on 1/27/2014.
//  Copyright (c) 2014 Jamil Dhanani. All rights reserved.
//

#include <iostream>
#include <math.h>

using namespace std;

bool isPrime (int n) {
    for (int i = 2; i <= (int)(ceil(sqrt(n))); i++) {
        //cout << "Ceil: " << (int)(ceil(sqrt(n))) << ", Trying " << i << endl;
        if (!(n % i))
            return false;
    }
    return true;
}


int main(int argc, const char * argv[])
{
    unsigned long int sum = 0;
    for (int i = 2; i < 2000000; i++) {
        bool prime = isPrime(i);
        printf("%d, %s\n", i, (prime ? "prime" : "not prime"));
        if (prime)
            sum += i;
    }
    cout << sum << endl;
    return 0;
}


