#include <iostream>
#include "sha256.h"

// Define input and expected output
void test_sha256() {
    const int bitlength = 512;
    bit32_t input[16] = {0x61626380, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0x00000018}; // "abc" padded
    bit32_t output[8] = {};

    // Call the top-level function
    hash1(input, bitlength, output);

    // Print the output for verification
    std::cout << "Hash Output:" << std::endl;
    for (int i = 0; i < 8; i++) {
        std::cout << std::hex << output[i] << " ";
    }
    std::cout << std::endl;
}

int main() {
    test_sha256();
    return 0;
}
