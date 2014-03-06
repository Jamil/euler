//
//  main.cpp
//  15
//
//  Created by Jamil Dhanani on 3/5/2014.
//  Copyright (c) 2014 Jamil Dhanani. All rights reserved.
//

#include <iostream>

#define NUM_SQ 20

using namespace std;

unsigned long int numPaths(unsigned long int **paths, int x, int y) {
    // Check for out of bounds
    if (x < 0 || x > NUM_SQ)
        return 0;
    if (y < 0 || y > NUM_SQ)
        return 0;
    
    // Check for end
    if (x == NUM_SQ && y == NUM_SQ)
        return 1;
    
    if (paths[x][y] != -1) {
        cout << "RETURNING " << paths[x][y] << endl;
        return paths[x][y];
    }
    
    // Try right
    unsigned long int rightPaths = numPaths(paths, x + 1, y);
    
    // Try up
    unsigned long int upPaths = numPaths(paths, x, y + 1);
    
    // Save value for later reference
    paths[x][y] = rightPaths + upPaths;
    
    // Return
    return paths[x][y];
}

void traverse(unsigned long int* count, int x, int y) {
    cout << "Trying (" << x << ", " << y << ")" << endl;
    
    if (x < 0 || x > NUM_SQ)
        return;
    else if (y < 0 || y > NUM_SQ)
        return;
    
    // Test for end of path
    if (x == NUM_SQ && y == NUM_SQ) {
        (*count)++;
        return;
    }
    
    // Try right
    traverse(count, x + 1, y);
    
    // Try up
    traverse(count, x, y + 1);
}

int main(int argc, const char * argv[])
{
    unsigned long int count = 0;
    unsigned long int **paths = nullptr;
    paths = (unsigned long int**)malloc(sizeof(unsigned long int*) * (NUM_SQ + 1));
    
    for (int i = 0; i < NUM_SQ + 1; i++) {
        paths[i] = (unsigned long int*)malloc(sizeof(unsigned long int) * (NUM_SQ + 1));
        for (int j = 0; j < NUM_SQ + 1; j++)
            paths[i][j] = -1;
    }
    
    count = numPaths(paths, 0, 0);
    //traverse(&count, 0, 0);
    
    cout << count << endl;
    
    return 0;
}

