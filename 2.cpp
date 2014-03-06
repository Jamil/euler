//
//  main.cpp
//  2
//
//  Created by Jamil Dhanani on 10/31/2013.
//  Copyright (c) 2013 Jamil Dhanani. All rights reserved.
//

#include <iostream>

using namespace std;

int main(int argc, const char * argv[])
{
    int sum = 0;
    
    int n1 = 1;
    int n2 = 1;
    while (n1 + n2 < 4000000) {
        int n3 = n1 + n2;
        if (!(n3%2)) sum += n3;
        n1 = n2;
        n2 = n3;
    }
    cout << sum << endl;
}

