#include "sha256.h"
#include <iomanip>
#include <iostream>
#include "typedefs.h"
#include <string.h>
// #include "miner.h"
#include "util.h"
#include <fstream>
#include <hls_stream.h>

using namespace std;

typedef ap_uint<32> bit32_t;

void dut(hls::stream<bit32_t> &strm_in, hls::stream<bit32_t> &strm_out) {
    const int I_WIDTH1 = 64; // Total width of the input block in bits
    bit32_t input[2];       // 64-bit input buffer split into two 32-bit elements

    // Read two 32-bit words from the input stream to form a 64-bit block
    bit32_t input_low = strm_in.read();
    bit32_t input_high = strm_in.read();

    // Combine the lower and higher parts into a single input array
    input[0] = input_low.to_uint();         // Lower 32 bits
    input[1] = input_high.to_uint();        // Higher 32 bits

    // Set bit length as 64 since we’re using 64 bits of data
    int bitlength = I_WIDTH1;

    // Output buffer for the SHA-256 hash result (8 words of 32 bits each)
    bit32_t outputlocation[8] = {0};

    // Call the hash function
    hash1(input, bitlength, outputlocation);

    // Write the 256-bit (8 words of 32 bits) hash result to the output stream individually
    strm_out.write(outputlocation[0]);
    strm_out.write(outputlocation[1]);
    strm_out.write(outputlocation[2]);
    strm_out.write(outputlocation[3]);
    strm_out.write(outputlocation[4]);
    strm_out.write(outputlocation[5]);
    strm_out.write(outputlocation[6]);
    strm_out.write(outputlocation[7]);
}

// int main() {
//     hls::stream<bit32_t> hash_in;
//     hls::stream<bit32_t> hash_out;
//     hash_in.write()

//     dut(hash_in, hash_out);
//     return 0;

// }

// #include <hls_stream.h>
// #include <ap_int.h>
// #include <iostream>
// #include "typedefs.h" // Assumes bit32_t is defined here as ap_uint<32>
// #include "sha256.h"
// #include "util.h"

// Test data and labels (hardcoded for demonstration)
const int TEST_SIZE = 10;  // Define the number of tests
const uint32_t test_data[TEST_SIZE][2] = {
    {0x12345678, 0x9abcdef0}, {0x11111111, 0x22222222},
    {0x33333333, 0x44444444}, {0x55555555, 0x66666666},
    {0x77777777, 0x88888888}, {0x99999999, 0xaaaaaaaa},
    {0xbbbbbbbb, 0xcccccccc}, {0xdddddddd, 0xeeeeeeee},
    {0xffffffff, 0x00000000}, {0xabcdef12, 0x34567890}
};
const int test_labels[TEST_SIZE] = {0, 1, 1, 0, 1, 0, 1, 0, 1, 0};  // Example labels

int main() {
    hls::stream<bit32_t> dut_in;
    hls::stream<bit32_t> dut_out;
    float correct = 0.0;

    // Timer
    // Timer timer("SHA-256 Test");
    // timer.start();

    // Transmit 64-bit test data to dut function and get results
    for (int test = 0; test < TEST_SIZE; test++) {
        // Write two 32-bit words to the input stream
        dut_in.write(test_data[test][0]); // Lower 32 bits
        dut_in.write(test_data[test][1]); // Higher 32 bits

        // Perform hash computation
        dut(dut_in, dut_out);

        // Read back the 256-bit result (8 x 32-bit words) and print it
        std::cout << "Test " << test << " result: ";
        std::cout << std::endl;
        bit32_t result_word[8];
        for (int i = 0; i < 8; i++) {
            result_word[i] = dut_out.read();
            std::cout << std::hex << result_word[i].to_uint() << " ";
            std::cout << std::endl;
        }
        // std::cout << std::endl;

        // Placeholder for comparing against expected labels if available
        // Here, we just compare against `test_labels` for simplicity.
        if (result_word[0] == test_labels[test]) { 
            correct += 1.0;
        }
    }
    // timer.stop();

    // Calculate accuracy
    // std::cout << "Accuracy: " << correct / TEST_SIZE << std::endl;

    return 0;
}

