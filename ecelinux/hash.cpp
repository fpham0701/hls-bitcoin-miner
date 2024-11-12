#include <iostream>
#include <iomanip>
#include <string.h>
#include "sha256.h"
#include "miner.h"
#include "util.h"
#include <hls_stream.h>

typedef uint32_t bit32_t;   
typedef ap_uint<256> bit256_t;  

void dut(hls::stream<bit32_t> &strm_in, hls::stream<bit256_t> &strm_out) {
   
    char version[9];
    char prevhash[65];
    char merkle_root[65];
    char time[9];
    char nbits[9];
    uint32_t nonce_difficulty;


    for (int i = 0; i < 8; i++) {
        bit32_t input_val = strm_in.read();
        version[i] = input_val;
    }
    version[8] = '\0';

    for (int i = 0; i < 64; i++) {
        bit32_t input_val = strm_in.read();
        prevhash[i] = input_val;
    }
    prevhash[64] = '\0';

    for (int i = 0; i < 64; i++) {
        bit32_t input_val = strm_in.read();
        merkle_root[i] = input_val;
    }
    merkle_root[64] = '\0';

    for (int i = 0; i < 8; i++) {
        bit32_t input_val = strm_in.read();
        time[i] = input_val;
    }
    time[8] = '\0';

    for (int i = 0; i < 8; i++) {
        bit32_t input_val = strm_in.read();
        nbits[i] = input_val;
    }
    nbits[8] = '\0';

    
    nonce_difficulty = strm_in.read();


    uint32_t result[8];


    uint32_t nonce = mineblock(nonce_difficulty, version, prevhash, merkle_root, time, nbits);
    hashblock(nonce, version, prevhash, merkle_root, time, nbits, result);

    for (int i = 0; i < 8; i++) {
        result[i] = Reverse32(result[i]);
    }

 
    bit256_t output_hash = 0;
    for (int i = 0; i < 8; i++) {
        output_hash.range((i + 1) * 32 - 1, i * 32) = result[i];
    }


    strm_out.write(output_hash);
}
