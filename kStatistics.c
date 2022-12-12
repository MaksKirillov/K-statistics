#include <stdio.h>

unsigned kStatistics(unsigned array[], size_t array_length, size_t k) {

    for (size_t j = array_length; j > 0; j -= 1) {
        for (size_t i = 1; i < j; i += 1) {
            if (array[i - 1] > array[i]) {
                const unsigned t = array[i - 1];
                array[i - 1] = array[i];
                array[i] = t;
            }
        }
    }
    return array[k - 1];
}
