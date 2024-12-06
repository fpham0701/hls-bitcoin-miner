#include "main_tb.h"
#include "dut.h"
#include "timer.h"
#include "util.h"
#include "miner.h"

using namespace std;

float correct = 0.0;


int main() {
    hls::stream<bit32_t> data_in;
    hls::stream<bit32_t> data_out;
    bit32_t strm_read;
    bit32_t hash_out[9];


    bit32_t nonce[1] = {1550};

    bit32_t version[1] = {0x01000050}; // Single 32-bit number

    bit32_t prevhash[8] = {0x00000000, 0x00000000, 0x00000000, 0x00000000, 
                            0x00000000, 0x00000000, 0x00000000, 0x00000000}; // 8 x 32-bit numbers

    bit32_t merkle_root[8] = {0x3BA3EDFD, 0x6A7B12B2, 0x4AC72C3E, 0x47768F61,
                                0x6C81BC3, 0x188A5132, 0x6A9FB8AA, 0x2B1E5E4A}; // 8 x 32-bit numbers

    bit32_t time[1] = {0x29AB5F49}; // Single 32-bit number
    
    bit32_t nbits[1] = {0x7FFF7F00};//{0x007FFFFF}; // Single 32-bit number  

    Timer timer("SHA-256 Test");
    timer.start();

    // Prepare input array
    bit32_t input[20];
    input[0] = nonce[0];
    input[1] = version[0];
    for (int i = 0; i < 8; i++) {
        input[2 + i] = prevhash[i];
        input[10 + i] = merkle_root[i];
    }
    input[18] = time[0];
    input[19] = nbits[0];

    for (int i = 0; i < 20; i++) {
        data_in.write(input[i]);
    }

    dut(data_in, data_out);

    for (int i = 0; i < 9; i++) {
        //std::cout << "Data: " << data_out.read() << std::endl;
        strm_read = data_out.read();
        std::cout << "streamout:  " << strm_read << std::endl;
        hash_out[i] = strm_read;
    }
    timer.stop();

    // Print results
    std::cout << "Block solved! Nonce: " << std::hex << hash_out[0] << std::endl;
    std::cout << "Block hash:" << std::endl;
    for (int i = 8; i >= 1; i--) {
        std::cout << i << " hash : " << hash_out[i] << std::endl;
    }
    
    return 0;
}

// int main() {
//     // Timer
//     Timer timer("SHA-256 Test");
//     timer.start();

//     bit32_t nonce[1] = {1550};

//     bit32_t version[1] = {0x01000050}; // Single 32-bit number

//     bit32_t prevhash[8] = {0x00000000, 0x00000000, 0x00000000, 0x00000000, 
//                             0x00000000, 0x00000000, 0x00000000, 0x00000000}; // 8 x 32-bit numbers

//     bit32_t merkle_root[8] = {0x3BA3EDFD, 0x6A7B12B2, 0x4AC72C3E, 0x47768F61,
//                                 0x6C81BC3, 0x188A5132, 0x6A9FB8AA, 0x2B1E5E4A}; // 8 x 32-bit numbers

//     bit32_t time[1] = {0x29AB5F49}; // Single 32-bit number
    
//     bit32_t nbits[1] = {0x7FFF7F00};//{0x007FFFFF}; // Single 32-bit number
    
//     // Prepare input array
//     bit32_t input[20] = {0};
//     input[0] = nonce[0];
//     input[1] = version[0];
//     for (int i = 0; i < 8; i++) {
//         input[2 + i] = prevhash[i];
//         input[10 + i] = merkle_root[i];
//     }
//     input[18] = time[0];
//     input[19] = nbits[0];
    
//     // Prepare output array
//     bit32_t data_out[9] = {0};
    
//     // Call the DUT function
//     dut(input, data_out);
    
//     // Extract outputs
//     bit32_t nonce_out = data_out[0];
//     bit32_t hash_out[8];
//     for (int i = 0; i < 8; i++) {
//         hash_out[i] = data_out[1 + i];
//     }

//     // Print results
//     std::cout << "Block solved! Nonce: " << std::hex << nonce_out << std::endl;
//     std::cout << "Block hash:" << std::endl;
//     for (int i = 7; i >= 0; i--) {
//         std::cout << i + 1 << " hash : " << std::hex << hash_out[i] << std::endl;
//     }

//     timer.stop();
//     return 0;
// }