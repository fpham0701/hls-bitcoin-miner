#include "dut.h"
#include "sha256.h"
#include "util.h"
#include "timer.h"
#include "miner.h"
// #include <iomanip>
// #include <iostream>
// #include <string.h>
// #include <fstream>

using namespace std;

typedef ap_uint<32> bit32_t;


// void dut(hls::stream<bit32_t> &strm_in, hls::stream<bit32_t> &strm_out) {
//     const int I_WIDTH1 = 64; // Total width of the input block in bits
//     bit32_t input[6];       // 64-bit input buffer split into two 32-bit elements

//     // Read two 32-bit words from the input stream to form a 64-bit block
//     bit32_t nonce = strm_in.read();
//     bit32_t version = strm_in.read();
//     bit32_t prevhash = strm_in.read();
//     bit32_t merkle_root = strm_in.read();
//     bit32_t time_s = strm_in.read();
//     bit32_t nbits = strm_in.read();


//     // Combine the lower and higher parts into a single input array
//     // input[0] = nonce.to_uint();         
//     // input[1] = version.to_uint();    
//     // input[2] = prevhash.to_uint();  
//     // input[3] = merkle_root.to_uint();  
//     // input[4] = time_s.to_uint();  
//     // input[5] = nbits.to_uint();      

//     // Set bit length as 64 since we’re using 64 bits of data
//     // int bitlength = I_WIDTH1;

//     // Output buffer for the SHA-256 hash result (8 words of 32 bits each)
//     new_hash_pow output;

//     // // Call the hash function
//     // hash1(input, bitlength, outputlocation);
//     output = mineblock( nonce, version, prevhash, merkle_root, time_s, nbits);

//     // Write result to ouput
//     strm_out.write(output.nonce);
//     strm_out.write(output.hash[7]);
//     strm_out.write(output.hash[6]);
//     strm_out.write(output.hash[5]);
//     strm_out.write(output.hash[4]);
//     strm_out.write(output.hash[3]);
//     strm_out.write(output.hash[2]);
//     strm_out.write(output.hash[1]);
//     strm_out.write(output.hash[0]);
// }


// // void dut(hls::stream<bit32_t> &strm_in, hls::stream<bit32_t> &strm_out) {
// //     const int I_WIDTH1 = 64; // Total width of the input block in bits
// //     bit32_t input[2];       // 64-bit input buffer split into two 32-bit elements

// //     // Read two 32-bit words from the input stream to form a 64-bit block
// //     bit32_t input_low = strm_in.read();
// //     bit32_t input_high = strm_in.read();

// //     // Combine the lower and higher parts into a single input array
// //     input[0] = input_low.to_uint();         // Lower 32 bits
// //     input[1] = input_high.to_uint();        // Higher 32 bits

// //     // Set bit length as 64 since we’re using 64 bits of data
// //     int bitlength = I_WIDTH1;

// //     // Output buffer for the SHA-256 hash result (8 words of 32 bits each)
// //     bit32_t outputlocation[8] = {0};

// //     // Call the hash function
// //     hash1(input, bitlength, outputlocation);

// //     // Write the 256-bit (8 words of 32 bits) hash result to the output stream individually
// //     strm_out.write(outputlocation[0]);
// //     strm_out.write(outputlocation[1]);
// //     strm_out.write(outputlocation[2]);
// //     strm_out.write(outputlocation[3]);
// //     strm_out.write(outputlocation[4]);
// //     strm_out.write(outputlocation[5]);
// //     strm_out.write(outputlocation[6]);
// //     strm_out.write(outputlocation[7]);
// // }


