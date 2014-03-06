//
//  main.cpp
//  12
//
//  Created by Jamil Dhanani on 2/5/2014.
//  Copyright (c) 2014 Jamil Dhanani. All rights reserved.
//

#include <iostream>
#include <math.h>

using namespace std;

int findDivisors(int num) {

    int count = 0;
    for (int i = 1; i <= sqrt(num); i++) {
        if (num % i == 0)
            count += 2;
    }
    
    return count;
}

int main(int argc, const char * argv[])
{
    bool found = false;
    int iteration = 2;
    int currentNumber = 1;
    
    while (!found) {
        currentNumber += iteration;
        iteration++;
        
        //cout << "Working on " << currentNumber << endl;
        
        int div = findDivisors(currentNumber);
        if (div > 500)
            found = true;
        
        //cout << "Div: " << div << endl;
    }
    
    cout << currentNumber << endl;
    
    return 0;
}

