//
//  main.cpp
//  16
//
//  Created by Jamil Dhanani on 3/6/2014.
//  Copyright (c) 2014 Jamil Dhanani. All rights reserved.
//

#include <iostream>

using namespace std;

int main(int argc, const char * argv[])
{
    
    int carry = 0;
    for (int j = 0; j < 50; j++) {
        int sum = 0;
        sum += carry;
        for (int i = 0; i < 100; i++) {
            string substr = x[i].substr(49 - j, 1);
            sum += atoi(substr.c_str());
        }
        carry = sum / 10;
        if (j == 49) {
            digits.push_back(sum);
        }
        else {
            int digit = sum % 10;
            cout << digit << endl;
            digits.push_back(digit);
        }
        //cout << carry << endl;
    }
    
    
    return 0;
}

