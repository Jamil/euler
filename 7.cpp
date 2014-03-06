//
//  main.cpp
//  7
//
//  Created by Jamil Dhanani on 11/2/2013.
//  Copyright (c) 2013 Jamil Dhanani. All rights reserved.
//

#include <iostream>
#include <vector>

using namespace std;

bool isPrime (vector<int> &primes, int n) {
    for (int i = 0; i < primes.size(); i++) {
        // cout << "testing " << n << "/" << primes.at(i) << endl;
        if (n < primes.at(i)*primes.at(i)) {
            return true;
        }
        if (!(n % primes.at(i))) {
            return false;
        }
    }
    return true;
}

int main(int argc, const char * argv[])
{
    int count = 0;
    int i = 2; // i should be a prime number always
    vector<int> primes;
    
    while (count < 10001) {
        cout << i << " / " << count << endl;
        if (isPrime(primes, i)) {
            count++;
            cout << "PRIME #" << count << endl;
            primes.push_back(i);
        }
        else cout << "NOT PRIME" << endl;
        i++;
    }
    cout << i-1 << " is the " << count << " prime" << endl;
    cout << endl;
    return 0;
}

