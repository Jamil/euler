//
//  main.cpp
//  9
//
//  Created by Jamil Dhanani on 11/2/2013.
//  Copyright (c) 2013 Jamil Dhanani. All rights reserved.
//

#include <iostream>

using namespace std;

int findTriple () {
    for (int A = 1; A < 999; A++) {
        for (int B = 1; B < 999 & A+B < 1000; B++) { // only n^2 since a, b forces c
            int C = 1000 - A - B;
            if (C < 0) cout << "???" << endl;
            if (A*A + B*B == C*C) {
                // We have a triple
                return A*B*C;
            }
        }
    }
    return -1;
}

int main(int argc, const char * argv[])
{
    cout << findTriple() << endl;
    std::cout << "Hello, World!\n";
    return 0;
}

