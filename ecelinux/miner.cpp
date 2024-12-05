#include <stdint.h>
#include <iostream>
// #include <chrono>
#include "util.h"
#include "sha256.h"
#include "typedefs.h"

#define BLOCK_SIZE 20
#define RESULT_SIZE 8

void hashblock(bit32_t blockheader[BLOCK_SIZE], bit32_t result[RESULT_SIZE])
{
    #pragma HLS inline
    // Perform hashing twice
    bit32_t hash0[8];
    hash1(blockheader, 640, hash0);
    for (int i = 0; i < 8; i++) {
        std::cout << "HASH0 is: " << i << " " << hash0[i] << std::endl;
    }
    hash1(hash0, 256, result);
    for (int i = 0; i < 8; i++) {
        std::cout << "RST is: " << i << " " << result[i] << std::endl;
    }
}

// Mines a block, returns nonce + valid hash
void mineblock(bit32_t noncestart, bit32_t version[1], bit32_t prevhash[8], 
                        bit32_t merkle_root[8], bit32_t time[1], bit32_t nbits[1], bit32_t rslt[9])
{
    // Define difficulty
    bit32_t difficulty[8];
    difficulty[0] = 0x0FFFFFFF;
    difficulty[1] = 0x7FFFFFFF;
    difficulty[2] = 0x7FFFFFFF;
    difficulty[3] = 0x7FFFFFFF;
    difficulty[4] = 0x7FFFFFFF;
    difficulty[5] = 0x7FFFFFFF;
    difficulty[6] = 0x7FFFFFFF;
    difficulty[7] = 0x7FFFFFFF;

    // bit32_t hash[8];
    bit32_t nonce = noncestart - 1;
    bit32_t nonce_array[1] = {nonce};

    bit32_t blockheader[20];

    blockheader[0] = version[0]; // Copy version

    // Copy prevhash into blockheader[1..8]
    for (int i = 0; i < 8; ++i) {
        blockheader[1 + i] = prevhash[i];
    }

    // Copy merkle_root into blockheader[9..16]
    for (int i = 0; i < 8; ++i) {
        blockheader[9 + i] = merkle_root[i];
    }

    // Copy time into blockheader[17]
    blockheader[17] = time[0]; // Copy time

    // Copy nbits into blockheader[18]
    blockheader[18] = nbits[0]; // Copy nbits

    // Copy the first element of nonce_array into blockheader[19]
    blockheader[19] = nonce_array[0]; 

    for (int n = 0; n < 10; n ++)
    {
        int count = 0;
        nonce++;
        blockheader[19] = nonce;
        bit32_t result[8];

        hashblock(blockheader, result);

        rslt[0] = nonce;

        for (int i = 0; i < 8; i++) {
            rslt[i+1] = result[i];
            std::cout << "The result is " << i << ": " << rslt[i+1] << std::endl;
        }
    }
}