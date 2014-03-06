//
//  main.cpp
//  5
//
//  Created by Jamil Dhanani on 10/31/2013.
//  Copyright (c) 2013 Jamil Dhanani. All rights reserved.
//

#include <iostream>

using namespace std;

long int Q3 () {
    bool found = false;
    long int currNum = 84;
    while (!found) {
        cout << currNum << endl;
        bool divbyall = true;
        for (int i = 10; i <= 20 && divbyall; i++) {
            if (currNum%i) divbyall = false; // Can stop checking now
        }
        if (divbyall) return currNum;
        currNum += 84;
    }
    return -1;
}

int main(int argc, const char * argv[])
{
    cout << Q3() << endl;
    // insert code here...
    std::cout << "Hello, World!\n";
    return 0;
}


