
#include "sha256.h"
#include <iomanip>
#include <iostream>
#include "typedefs.h"


#include <string.h>
#include "miner.h"
#include "util.h"
using namespace std;


typedef ap_uint<32> bit32_t;

void dut(hls::stream<bit32_t> &strm_in, hls::stream<bit32_t> &strm_out) {
    const int I_WIDTH1 = 64; // Define based on the input size
    bit32_t input_l;

    // Prepare input buffer for hashing
    uint32_t input[I_WIDTH1] = {0};
    int bitcount = 0;

    // Read input data from the stream into the input array
    for (int i = 0; i < I_WIDTH1; i++) {
        input_l = strm_in.read();
        input[i] = input_l;
    }

    // Calculate bit length based on the number of words read in
    int bitlength = I_WIDTH1 * 32;

    // Define the output buffer for the hash function
    uint32_t outputlocation[8] = {0};

    // Call the hash function
    hash(input, bitlength, outputlocation);

    // Write each 32-bit word of the resulting hash to the output stream
    for (int i = 0; i < 8; i++) {
        bit32_t output = outputlocation[i];
        strm_out.write(output);
    }
}
