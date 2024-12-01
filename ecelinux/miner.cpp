#include <stdint.h>
#include <iostream>
// #include <chrono>
#include "util.h"
#include "sha256.h"

#define BLOCK_SIZE 20
#define RESULT_SIZE 8

void hashblock(bit32_t blockheader[BLOCK_SIZE],  bit32_t result[RESULT_SIZE])
{
    result[0] = 0;
    result[1] = 0;
    result[2] = 0;
    result[3] = 0;
    result[4] = 0;
    result[5] = 0;
    result[6] = 0;
    result[7] = 0;
    // Perform hashing twice
    bit32_t hash0[8] = {0};
    hash1(blockheader, 640, hash0);
    std::cout << "hash0 = " << hash0 << std::endl;
    hash1(hash0, 256, result);
    std::cout << "hash = " << result << std::endl;
}

// Mines a block, returns nonce + valid hash
new_hash_pow mineblock(bit32_t noncestart, bit32_t version[1], bit32_t prevhash[8], 
                        bit32_t merkle_root[8], bit32_t time[1], bit32_t nbits[1])
{
    // Define difficulty
    bit32_t difficulty[8] = {0x0FFFFFFF, 0x7FFFFFFF, 0x7FFFFFFF, 0x7FFFFFFF, 0x7FFFFFFF, 0x7FFFFFFF, 0x7FFFFFFF, 0x7FFFFFFF};
    

    // bit32_t hash[8];
    bit32_t nonce = noncestart - 1;
    bit32_t nonce_array[1] = {nonce};

    bit32_t blockheader[20] = {0};

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
    
    // = {version, prevhash, merkle_root, time, nbits, nonce_array}


    new_hash_pow final_result;
    final_result.nonce = 0;
    final_result.hash[0] = 0;
    final_result.hash[1] = 0;
    final_result.hash[2] = 0;
    final_result.hash[3] = 0;
    final_result.hash[4] = 0;
    final_result.hash[5] = 0;
    final_result.hash[6] = 0;
    final_result.hash[7] = 0;
    // std::chrono::steady_clock::time_point start = std::chrono::steady_clock::now();

    // while (true)
    for (int n = 0; n < 10; n ++)
    {
        int count = 0;
        nonce++;
        blockheader[19] = nonce;
        bit32_t result[8] = {0};

        hashblock(blockheader,result);

        // Check if the hash meets the difficulty
        for (int i = 0; i < 8; i++) {
            if (result[7 - i] < difficulty[i]) {
                count += 1;
                std::cout << "blockheader = " << blockheader << std::endl;
                std::cout << "hash = " << result << std::endl;
                std::cout << "count = " << count << std::endl;
            }
            else if (result[7 - i] > difficulty[i]) {
                break;
            }
        }

        if (count == 8 ){
            final_result.nonce = nonce;
            for (int j = 0; j < 8; j++) {
                final_result.hash[j] = result[j];
            }
            return final_result;
        }
    }

    std::cout << "no solution " << std::endl;
    final_result.nonce = nonce;
    for (int j = 0; j < 8; j++) {
        final_result.hash[j] = 0;
    }
    return final_result;
}