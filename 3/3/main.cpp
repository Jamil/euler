//
//  main.cpp
//  3
//
//  Created by Jamil Dhanani on 10/31/2013.
//  Copyright (c) 2013 Jamil Dhanani. All rights reserved.
//

#include <iostream>

using namespace std;

int max (long int a, long int b) {
    return (a>b) ? a : b;
}

int primeFactorsOf (long int n) {
    // Iterate through possible factors
    for (long int i = 2; i < n/2; i++) {
        if (!(n%i)) {
            return max(primeFactorsOf(n/i), primeFactorsOf(i));
        }
    }
    
    // This is a prime node
    cout << n << endl;
    return n;
}

int main(int argc, const char * argv[])
{
    cout << endl << primeFactorsOf(600851475143) << endl;
    std::cout << "Hello, World!\n";
    return 0;
}

