//
//  main.cpp
//  1
//
//  Created by Jamil Dhanani on 10/31/2013.
//  Copyright (c) 2013 Jamil Dhanani. All rights reserved.
//

#include <iostream>

using namespace std;

int main(int argc, const char * argv[])
{
    int sum = 0;
    for (int i = 0; i < 1000; i++) sum += (!(i%3) | !(i%5)) ? i : 0;
    cout << sum << endl;
    return 0;
}

