//
//  main.cpp
//  6
//
//  Created by Jamil Dhanani on 10/31/2013.
//  Copyright (c) 2013 Jamil Dhanani. All rights reserved.
//

#include <iostream>
#include <math.h>

using namespace std;

long int sumOfSquares (int upTo) {
    long int sum = 0;
    for (int i = 0; i <= upTo; i++) {
        sum += pow(i, 2);
        cout << sum << endl;
    }
    return sum;
}

long int squareOfSum (int upTo) {
    int sum = 0;
    long int square;
    for (int i = 0; i <= upTo; i++) sum += i;
    square = pow(sum, 2);
    cout << square << endl;
    return square;
}

int main(int argc, const char * argv[])
{
    long int diff;
    long int sumofs = sumOfSquares(100);
    cout << "----" << endl;
    long int sqofsu = squareOfSum(100);
    diff = sqofsu - sumofs;
    cout << diff << endl;
    // insert code here...
    std::cout << "Hello, World!\n";
    return 0;
}

