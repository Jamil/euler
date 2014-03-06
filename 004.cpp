//
//  main.cpp
//  4
//
//  Created by Jamil Dhanani on 10/31/2013.
//  Copyright (c) 2013 Jamil Dhanani. All rights reserved.
//

#include <iostream>
#include <sstream>

using namespace std;

bool isPalindrome(string a) {
    if (a.length() <= 1)
        return true;
    else
        return (a.at(0) == a.at(a.length()-1)) && isPalindrome(a.substr(1, a.length()-2));
}

bool intIsPalindrome(int n) {
    string str = to_string(n);
    return isPalindrome(str);
}

int findPalindrome() {
    int max = 0;
    for (int i = 999; i > 101; i--) {
        for (int j = 999; j > 101; j--) {
            cout << i << " and " << j << endl;
            max = (intIsPalindrome(i*j) && i*j > max) ? i*j : max;
        }
    }
    return max;
}

int main(int argc, const char * argv[])
{
    cout << findPalindrome() << endl;
    std::cout << "Hello, World!\n";
    return 0;
}

