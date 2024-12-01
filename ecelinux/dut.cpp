#include "dut.h"
#include "sha256.h"
#include "util.h"
#include "timer.h"
#include "miner.h"

using namespace std;

void dut(const bit32_t data_in[20], bit32_t data_out[9]) {
    // Extract inputs from the array
    bit32_t nonce = data_in[0];

    bit32_t version[1];
    version[0] = data_in[1];

    bit32_t prevhash[8];
    for (int i = 0; i < 8; i++) {
        prevhash[i] = data_in[2 + i];
    }

    bit32_t merkle_root[8];
    for (int i = 0; i < 8; i++) {
        merkle_root[i] = data_in[10 + i];
    }

    bit32_t time[1];
    time[0] = data_in[18];

    bit32_t nbits[1];
    nbits[0] = data_in[19];

    // Output buffer for the SHA-256 hash result (8 words of 32 bits each)
    new_hash_pow output = mineblock(nonce, version, prevhash, merkle_root, time, nbits);

    // Write results to the output array
    data_out[0] = output.nonce;
    data_out[1] = output.hash[7];
    data_out[2] = output.hash[6];
    data_out[3] = output.hash[5];
    data_out[4] = output.hash[4];
    data_out[5] = output.hash[3];
    data_out[6] = output.hash[2];
    data_out[7] = output.hash[1];
    data_out[8] = output.hash[0];
}


