#include <stdint.h>
#include <iostream>
#include <chrono>
#include "util.h"
#include "sha256.h"

// typedef ap_uint<32> bit32_t;
// Converts bits to a 256-bit value that we can compare our hash against
void bits_to_difficulty(bit32_t bits, bit32_t* difficulty)
{
    for(int i = 0; i < 8; i++)
        difficulty[i] = 0;

    bits = Reverse32(bits);

    char exponent = bits & 0xff;
    bit32_t significand = bits >> 8;

    for(int i = 0; i < 3; i++)
    {
        // Endianness is reversed in this step
        unsigned char thisvalue = (unsigned char)(significand >> (8 * i));

        int index = 32 - exponent + i;
        difficulty[index / 4] = difficulty[index / 4] |
            ((unsigned int)thisvalue << (8 * (3 - (index % 4))));
    }
}

// Hashes block with given nonce, stores hash in result
void hashblock(bit32_t nonce, char* version, char* prevhash, 
    char* merkle_root, char* time, char* nbits, bit32_t* result)
{
    bit32_t blockheader[20];

    hexstr_to_intarray(version, blockheader);
    hexstr_to_intarray(prevhash, blockheader + 1);
    hexstr_to_intarray(merkle_root, blockheader + 9);
    hexstr_to_intarray(time, blockheader + 17);
    hexstr_to_intarray(nbits, blockheader + 18);
    *(blockheader + 19) = nonce;

    //print_bytes((unsigned char*)blockheader, 80);

    for(int i = 0; i < 20; i++)
        blockheader[i] = Reverse32(blockheader[i]);

    bit32_t hash0[8];
    hash1(blockheader, 640, hash0);

    hash1(hash0, 256, result);

}

// new mineblock reutrn nonce + valid_hash
new_hash_pow mineblock(bit32_t noncestart, char* version, char* prevhash, 
    char* merkle_root, char* time, char* nbits)
{
    // First convert bits to a bit32_t, then convert this to a difficulty
    bit32_t difficulty[8];
    bit32_t bits[1];
    hexstr_to_intarray(nbits, bits);

    for (int t = 0; t < 8; t++ ){
        if (t == 7) {
            difficulty[t] = 0x0000;
        } else {
            difficulty[t] = 0xFFFF;
        }
    }

    bit32_t hash[8];
    bit32_t nonce = noncestart - 1;
    std::chrono::steady_clock::time_point start = std::chrono::steady_clock::now();

    while (true)
    {
        nonce++;
        hashblock(nonce, version, prevhash, merkle_root, time, nbits, hash);

        // Check if the hash is below the difficulty
        for (int i = 0; i < 8; i++)
        {
            if (hash[7 - i] < difficulty[i])
            {
                new_hash_pow result;
                result.nonce = nonce;
                for (int j = 0; j < 8; j++) {
                    result.hash[j] = hash[j];
                }
                return result;
            }
            else if (hash[7 - i] > difficulty[i])
                break;
            // If equal, continue to the next loop iteration
        }

        // Periodically report the hash rate
        if (((nonce - noncestart) % 10000) == 0 && nonce != noncestart)
        {
            std::chrono::steady_clock::time_point end = std::chrono::steady_clock::now();
            long duration = std::chrono::duration_cast<std::chrono::milliseconds>(end - start).count();

            float hashrate = 10000000.0 / (float)duration;
            std::cout << "Currently mining at " << hashrate << " hashes / second" << std::endl;
            start = std::chrono::steady_clock::now();
        }
    }
}


// Searches for a valid block hash with given nonce, given difficulty defined by nbits
// Returns nonce for which this block is valid
// ORIGINAL FUNCTION 
// bit32_t mineblock(bit32_t noncestart, char* version, char* prevhash, 
//     char* merkle_root, char* time, char* nbits)
// {
//     // First convert bits to a bit32_t, then convert this to a difficulty
//     bit32_t difficulty[8];
//     bit32_t bits[1];
//     hexstr_to_intarray(nbits, bits);

//     for (int t = 0; t < 8; t++ ){
//         if (t == 7) {
//             difficulty[t] = 0x0000;
//         } else {
//             difficulty[t] = 0xFFFF;
//         }
//     }

//     char solved = 0;
//     bit32_t hash[8];
//     bit32_t nonce = noncestart-1;

//     std::chrono::steady_clock::time_point start = std::chrono::steady_clock::now();

//     while(true)
//     {
//         nonce++;

//         hashblock(nonce, version, prevhash, merkle_root, time, nbits, hash);

//         // #pragma HLS pipeline
//         for(int i = 0; i < 8; i++)
//         {
//             if(hash[7-i] < difficulty[i])
//             {
//                 solved = 1;
//                 return nonce;
//             }
//             else if(hash[7-i] > difficulty[i])
//                 break;
//             // And if they're equal, we keep going!
//         }

//         if(((nonce - noncestart) % 10000) == 0 && nonce != noncestart)
//         {
//             std::chrono::steady_clock::time_point end = std::chrono::steady_clock::now();
//             long duration = std::chrono::duration_cast<std::chrono::milliseconds>(end - start).count();

//             float hashrate = 10000000.0 / (float)duration;
//             std::cout << "Currently mining at " << hashrate << " hashes / second" << std::endl;
//             start = std::chrono::steady_clock::now();
//         }
//     }
// }