#include <stdint.h>
#include <iostream>
#include <chrono>
#include "util.h"
#include "sha256.h"

// typedef ap_uint<32> uint32_t;
// Converts bits to a 256-bit value that we can compare our hash against
// void bits_to_difficulty(uint32_t bits, uint32_t* difficulty)
// {
//     for(int i = 0; i < 8; i++)
//         difficulty[i] = 0;

//     bits = Reverse32(bits);

//     char exponent = bits & 0xff;
//     uint32_t significand = bits >> 8;

//     for(int i = 0; i < 3; i++)
//     {
//         // Endianness is reversed in this step
//         unsigned char thisvalue = (unsigned char)(significand >> (8 * i));

//         int index = 32 - exponent + i;
//         difficulty[index / 4] = difficulty[index / 4] |
//             ((unsigned int)thisvalue << (8 * (3 - (index % 4))));
//     }
// }

// Hashes block with given nonce, stores hash in result
// void hashblock(uint32_t nonce, char* version, char* prevhash, 
//     char* merkle_root, char* time, char* nbits, uint32_t* result)
// {
//     uint32_t blockheader[20];

//     // std::cout << "version:" << std::endl;
//     hexstr_to_intarray(version, blockheader);

//     // std::cout << "prevhash:" << std::endl;
//     hexstr_to_intarray(prevhash, blockheader + 1);
    
//     // std::cout << "merkle_root" << std::endl;
//     hexstr_to_intarray(merkle_root, blockheader + 9);

//     // std::cout << "time" << std::endl;
//     hexstr_to_intarray(time, blockheader + 17);

//     // std::cout << "nbits" << std::endl;
//     hexstr_to_intarray(nbits, blockheader + 18);

//     // std::cout << "nonce " << nonce << std::endl;
//     *(blockheader + 19) = nonce;
//     std::cout << "blockheader " << blockheader << std::endl;
//     //print_bytes((unsigned char*)blockheader, 80);

//     for(int i = 0; i < 20; i++)
//         blockheader[i] = Reverse32(blockheader[i]);

//     uint32_t hash0[8];
//     hash1(blockheader, 640, hash0);

//     hash1(hash0, 256, result);

// }

// // new mineblock reutrn nonce + valid_hash
// new_hash_pow mineblock(uint32_t noncestart, char* version, char* prevhash, 
//     char* merkle_root, char* time, char* nbits)
// {
//     // First convert bits to a uint32_t, then convert this to a difficulty
//     uint32_t difficulty[8];
//     uint32_t bits[1];
//     hexstr_to_intarray(nbits, bits);

//     for (int t = 0; t < 8; t++ ){
//         if (t == 7) {
//             difficulty[t] = 0x0000;
//         } else {
//             difficulty[t] = 0xFFFF;
//         }
//     }

//     uint32_t hash[8];
//     uint32_t nonce = noncestart - 1;
//     std::chrono::steady_clock::time_point start = std::chrono::steady_clock::now();

//     while (true)
//     {
//         nonce++;
//         hashblock(nonce, version, prevhash, merkle_root, time, nbits, hash);

//         // Check if the hash is below the difficulty
//         for (int i = 0; i < 8; i++)
//         {
//             if (hash[7 - i] < difficulty[i])
//             {
//                 new_hash_pow result;
//                 result.nonce = nonce;
//                 for (int j = 0; j < 8; j++) {
//                     result.hash[j] = hash[j];
//                 }
//                 return result;
//             }
//             else if (hash[7 - i] > difficulty[i])
//                 break;
//             // If equal, continue to the next loop iteration
//         }

//         // Periodically report the hash rate
//         if (((nonce - noncestart) % 10000) == 0 && nonce != noncestart)
//         {
//             std::chrono::steady_clock::time_point end = std::chrono::steady_clock::now();
//             long duration = std::chrono::duration_cast<std::chrono::milliseconds>(end - start).count();

//             float hashrate = 10000000.0 / (float)duration;
//             std::cout << "Currently mining at " << hashrate << " hashes / second" << std::endl;
//             start = std::chrono::steady_clock::now();
//         }
//     }
// }

void hashblock(uint32_t* blockheader,  uint32_t* result)
{
    // uint32_t blockheader[20];

    // // Populate blockheader with 32-bit packets
    // blockheader[0] = version[0];
    // for (int i = 0; i < 8; i++) {
    //     blockheader[1 + i] = prevhash[i];
    // }
    // for (int i = 0; i < 8; i++) {
    //     blockheader[9 + i] = merkle_root[i];
    // }
    // blockheader[17] = time[0];
    // blockheader[18] = nbits[0];
    // blockheader[19] = nonce;

    // // Reverse each 32-bit word for little-endian compatibility
    // for (int i = 0; i < 20; i++) {
    //     blockheader[i] = Reverse32(blockheader[i]);
    // }

    // Perform hashing twice
    uint32_t hash0[8];
    hash1(blockheader, 640, hash0);
    hash1(hash0, 256, result);
}

// Mines a block, returns nonce + valid hash
new_hash_pow mineblock(uint32_t noncestart, uint32_t* version, uint32_t* prevhash, 
                        uint32_t* merkle_root, uint32_t* time, uint32_t* nbits)
{
    // Define difficulty
    uint32_t difficulty[8] = {0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0x0000};
    uint32_t nonce_array[] = {noncestart};

    

    uint32_t hash[8];
    uint32_t nonce = noncestart - 1;

    uint32_t blockheader[20];

    // Copy version into blockheader[0]
    memcpy(&blockheader[0], version, 1 * sizeof(uint32_t));

    // Copy prevhash into blockheader[1..8]
    memcpy(&blockheader[1], prevhash, 8 * sizeof(uint32_t));

    // Copy merkle_root into blockheader[9..16]
    memcpy(&blockheader[9], merkle_root, 8 * sizeof(uint32_t));

    // Copy time into blockheader[17]
    memcpy(&blockheader[17], time, 1 * sizeof(uint32_t));

    // Copy nbits into blockheader[18]
    memcpy(&blockheader[18], nbits, 1 * sizeof(uint32_t));

    // Copy the first element of nonce_array into blockheader[19]
    blockheader[19] = nonce_array[0]; 
    
    // = {version, prevhash, merkle_root, time, nbits, nonce_array}



    std::chrono::steady_clock::time_point start = std::chrono::steady_clock::now();

    while (true)
    {
        nonce++;
        uint32_t result[8];
        hashblock(blockheader,result);
        // hashblock(nonce, version, prevhash, merkle_root, time, nbits, hash);
    

        // Check if the hash meets the difficulty
        for (int i = 0; i < 8; i++) {
            if (hash[7 - i] < difficulty[i]) {
                new_hash_pow result;
                result.nonce = nonce;
                for (int j = 0; j < 8; j++) {
                    result.hash[j] = hash[j];
                }
                return result;
            }
            else if (hash[7 - i] > difficulty[i]) {
                break;
            }
        }

        // Periodic hash rate reporting
        if (((nonce - noncestart) % 10000) == 0 && nonce != noncestart) {
            auto end = std::chrono::steady_clock::now();
            long duration = std::chrono::duration_cast<std::chrono::milliseconds>(end - start).count();
            float hashrate = 10000000.0 / (float)duration;
            std::cout << "Currently mining at " << hashrate << " hashes / second" << std::endl;
            start = std::chrono::steady_clock::now();
        }
    }
}