// #include <stdint.h>
// #include <iostream>
// // #include <chrono>
// #include "util.h"
// #include "sha256.h"

// void hashblock(bit32_t* blockheader,  bit32_t* result)
// {
//     // Perform hashing twice
//     bit32_t hash0[8] = {0};
//     hash1(blockheader, 640, hash0);
//     hash1(hash0, 256, result);
// }

// // Mines a block, returns nonce + valid hash
// new_hash_pow mineblock(bit32_t noncestart, bit32_t* version, bit32_t* prevhash, 
//                         bit32_t* merkle_root, bit32_t* time, bit32_t* nbits)
// {
//     // Define difficulty
//     bit32_t difficulty[8] = {0x0FFFFFFF, 0x7FFFFFFF, 0x7FFFFFFF, 0x7FFFFFFF, 0x7FFFFFFF, 0x7FFFFFFF, 0x7FFFFFFF, 0x7FFFFFFF};
    

//     // bit32_t hash[8];
//     bit32_t nonce = noncestart - 1;
//     bit32_t nonce_array[1] = {nonce};

//     bit32_t blockheader[20] = {0};

//     blockheader[0] = *version; // Copy version

//     // Copy prevhash into blockheader[1..8]
//     for (int i = 0; i < 8; ++i) {
//         blockheader[1 + i] = prevhash[i];
//     }

//     // Copy merkle_root into blockheader[9..16]
//     for (int i = 0; i < 8; ++i) {
//         blockheader[9 + i] = merkle_root[i];
//     }

//     // Copy time into blockheader[17]
//     blockheader[17] = *time; // Copy time

//     // Copy nbits into blockheader[18]
//     blockheader[18] = *nbits; // Copy nbits

//     // Copy the first element of nonce_array into blockheader[19]
//     blockheader[19] = nonce_array[0]; 
    
//     // = {version, prevhash, merkle_root, time, nbits, nonce_array}


//     new_hash_pow final_result;
//     // final_result.nonce = 0;
//     // final_result.hash = {0};
//     // std::chrono::steady_clock::time_point start = std::chrono::steady_clock::now();

//     while (true)
//     {
//         int count = 0;
//         nonce++;
//         blockheader[19] = nonce;
//         bit32_t result[8] = {0};
//         // std::cout << "Input Nonce: " << std::hex << blockheader[19] << std::endl;
//         hashblock(blockheader,result);
//         // hashblock(nonce, version, prevhash, merkle_root, time, nbits, hash);

//         // Check if the hash meets the difficulty
//         // for (int i = 0; i < 8; i++) {
//         //     if (result[7 - i] < difficulty[i]) {
//         //         // new_hash_pow result;
//         //         final_result.nonce = nonce;
//         //         for (int j = 0; j < 8; j++) {
//         //             final_result.hash[j] = result[j];
//         //         }
//         //         return final_result;
//         //     }
//         //     else if (result[7 - i] > difficulty[i]) {
//         //         break;
//         //     }
//         // }

//         // Check if the hash meets the difficulty
       
//         for (int i = 0; i < 8; i++) {
//             if (result[7 - i] < difficulty[i]) {
//                 count += 1;
//                 std::cout << "count = " << count << std::endl;
//             }
//             else if (result[7 - i] > difficulty[i]) {
//                 break;
//             }
//         }
//         if (count == 8 ){
//             final_result.nonce = nonce;
//             for (int j = 0; j < 8; j++) {
//                 final_result.hash[j] = result[j];
//             }
//             return final_result;
//         }

//         // if (count == 8) {
//         //     final_result.nonce = nonce;
//         //     for (int j = 0; j < 8; j++) {
//         //         final_result.hash[j] = result[j];
//         //     }
//         //     return final_result;  
//         // }

//         // Periodic hash rate reporting
//         // if (((nonce - noncestart) % 10000) == 0 && nonce != noncestart) {
//         //     // auto end = std::chrono::steady_clock::now();
//         //     // long duration = std::chrono::duration_cast<std::chrono::milliseconds>(end - start).count();
//         //     // float hashrate = 10000000.0 / (float)duration;
//         //     // std::cout << "Currently mining at " << hashrate << " hashes / second" << std::endl;
//         //     // start = std::chrono::steady_clock::now();
//         // }
//     }
// }

#include <stdint.h>
#include <iostream>
// #include <chrono>
#include "util.h"
#include "sha256.h"

void hashblock(bit32_t* blockheader,  bit32_t* result)
{
    // Perform hashing twice
    bit32_t hash0[8] = {0};
    hash1(blockheader, 640, hash0);
    hash1(hash0, 256, result);
}

// Mines a block, returns nonce + valid hash
new_hash_pow mineblock(bit32_t noncestart, bit32_t* version, bit32_t* prevhash, 
                        bit32_t* merkle_root, bit32_t* time, bit32_t* nbits)
{
    // Define difficulty
    bit32_t difficulty[8] = {0x0FFFFFFF, 0x7FFFFFFF, 0x7FFFFFFF, 0x7FFFFFFF, 0x7FFFFFFF, 0x7FFFFFFF, 0x7FFFFFFF, 0x7FFFFFFF};
    

    // bit32_t hash[8];
    bit32_t nonce = noncestart - 1;
    bit32_t nonce_array[1] = {nonce};

    bit32_t blockheader[20] = {0};

    blockheader[0] = *version; // Copy version

    // Copy prevhash into blockheader[1..8]
    for (int i = 0; i < 8; ++i) {
        blockheader[1 + i] = prevhash[i];
    }

    // Copy merkle_root into blockheader[9..16]
    for (int i = 0; i < 8; ++i) {
        blockheader[9 + i] = merkle_root[i];
    }

    // Copy time into blockheader[17]
    blockheader[17] = *time; // Copy time

    // Copy nbits into blockheader[18]
    blockheader[18] = *nbits; // Copy nbits

    // Copy the first element of nonce_array into blockheader[19]
    blockheader[19] = nonce_array[0]; 
    
    // = {version, prevhash, merkle_root, time, nbits, nonce_array}


    new_hash_pow final_result;
    // final_result.nonce = 0;
    // final_result.hash = {0};
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

