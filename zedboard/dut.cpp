#include "dut.h"
#include "sha256.h"
#include "util.h"
#include "timer.h"
#include "miner.h"

#include <iostream>

using namespace std;

void dut(hls::stream<bit32_t> &strm_in, hls::stream<bit32_t> &strm_out) {
    bit32_t rslt[9];

    bit32_t nonce = strm_in.read();

    bit32_t version[1];
    version[0] = strm_in.read();

    bit32_t prevhash[8];
    for (int i = 0; i < 8; i++) {
        prevhash[i] = strm_in.read();
    }

    bit32_t merkle_root[8];
    for (int i = 0; i < 8; i++) {
        merkle_root[i] = strm_in.read();
    }

    bit32_t time[1];
    time[0] = strm_in.read();

    bit32_t nbits[1];
    nbits[0] = strm_in.read();

    std::cout << "Nonce: " << nonce << std::endl;
    std::cout << "Time: " << time[0] << std::endl;
    
    mineblock(nonce, version, prevhash, merkle_root, time, nbits, rslt);

    for (int j = 0; j < 1; j++) {
        for (int i = 0; i < 9; i++) {
            std::cout << "ResultsII " << i << ": " << rslt[i] << std::endl;
            strm_out.write(rslt[i]);
        }
    }
}

// void dut(const bit32_t data_in[20], bit32_t data_out[9]) {
//     bit32_t rslt[9];
//     // Extract inputs from the array
//     bit32_t nonce = data_in[0];

//     bit32_t version[1];
//     version[0] = data_in[1];

//     bit32_t prevhash[8];
//     for (int i = 0; i < 8; i++) {
//         prevhash[i] = data_in[2 + i];
//     }

//     bit32_t merkle_root[8];
//     for (int i = 0; i < 8; i++) {
//         merkle_root[i] = data_in[10 + i];
//     }

//     bit32_t time[1];
//     time[0] = data_in[18];

//     bit32_t nbits[1];
//     nbits[0] = data_in[19];

//     // Output buffer for the SHA-256 hash result (8 words of 32 bits each)
//     //new_hash_pow output = mineblock(nonce, version, prevhash, merkle_root, time, nbits);

//     mineblock(nonce, version, prevhash, merkle_root, time, nbits, rslt);

//     // Write results to the output array
//     data_out[0] = rslt[0];
//     data_out[1] = rslt[1];
//     data_out[2] = rslt[2];
//     data_out[3] = rslt[3];
//     data_out[4] = rslt[4];
//     data_out[5] = rslt[5];
//     data_out[6] = rslt[6];
//     data_out[7] = rslt[7];
//     data_out[8] = rslt[8];
// }