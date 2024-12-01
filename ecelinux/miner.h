// #include <stdint.h>
// // typedef ap_uint<32> bit32_t;

// // new_hash_pow mineblock(bit32_t noncestart, char* version, char* prevhash, char* merkle_root, char* time, char* nbits);
// // new_hash_pow mineblock(bit32_t noncestart,  bit32_t* version,  bit32_t* prevhash, 
// //                         bit32_t* merkle_root,  bit32_t* time,  bit32_t* nbits);
// new_hash_pow mineblock(bit32_t noncestart, bit32_t version[1], bit32_t prevhash[8], 
//                         bit32_t merkle_root[8], bit32_t time[1], bit32_t nbits[1])


// // void hashblock(bit32_t nonce, char* version, char* prevhash, 
// //     char* merkle_root, char* time, char* nbits, bit32_t* result);
// // void hashblock(bit32_t nonce, const bit32_t* version, const bit32_t* prevhash, 
// //                const bit32_t* merkle_root, const bit32_t* time, const bit32_t* nbits, 
// //                bit32_t* result);

// // void hashblock( bit32_t* blockheader,  bit32_t* result);
// void hashblock(bit32_t blockheader[BLOCK_SIZE],  bit32_t result[RESULT_SIZE])


// void bits_to_difficulty(bit32_t bits, bit32_t* difficulty);

#include <stdint.h>
// typedef ap_uint<32> bit32_t;

// new_hash_pow mineblock(bit32_t noncestart, char* version, char* prevhash, char* merkle_root, char* time, char* nbits);
// new_hash_pow mineblock(bit32_t noncestart,  bit32_t* version,  bit32_t* prevhash, 
//                         bit32_t* merkle_root,  bit32_t* time,  bit32_t* nbits);
new_hash_pow mineblock(bit32_t noncestart, bit32_t version[1], bit32_t prevhash[8], 
                        bit32_t merkle_root[8], bit32_t time[1], bit32_t nbits[1]);

// void hashblock(bit32_t nonce, char* version, char* prevhash, 
//     char* merkle_root, char* time, char* nbits, bit32_t* result);
// void hashblock(bit32_t nonce, const bit32_t* version, const bit32_t* prevhash, 
//                const bit32_t* merkle_root, const bit32_t* time, const bit32_t* nbits, 
//                bit32_t* result);

// void hashblock( bit32_t* blockheader,  bit32_t* result);
void hashblock(bit32_t blockheader[20],  bit32_t result[8]);


void bits_to_difficulty(bit32_t bits, bit32_t* difficulty);
