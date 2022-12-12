#include <stdio.h>
#include <stdbool.h>
#include "kStatistics.h"

int main() {
    static bool isTestsSuccessful = true;

    static unsigned array1[] =
            {6, 11, 23, 21, 9, 5, 15, 40, 8, 2};
    if (kStatistics(array1, 10, 1) == 2)
        printf("The 1st test was successful\n");
    else {
        printf("The 1st test failed\n");
        isTestsSuccessful = false;
    }

    static unsigned array2[] =
            {6, 11, 23, 21, 9, 5};
    if (kStatistics(array2, 6, 4) == 11)
        printf("The 2nd test was successful\n");
    else {
        printf("The 2nd test failed\n");
        isTestsSuccessful = false;
    }

    static unsigned array3[] =
            {6, 11, 23, 21, 9, 5, 15, 40, 8, 2, 55, 4};
    if (kStatistics(array3, 12, 12) == 55)
        printf("The 3rd test was successful\n");
    else {
        printf("The 3rd test failed\n");
        isTestsSuccessful = false;
    }

    if (isTestsSuccessful)
        printf("All the tests were successful");
    else
        printf("Some of the tests were unsuccessful");
}