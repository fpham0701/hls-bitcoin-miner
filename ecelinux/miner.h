#include <stdint.h>
// typedef ap_uint<32> uint32_t;

// new_hash_pow mineblock(uint32_t noncestart, char* version, char* prevhash, char* merkle_root, char* time, char* nbits);
new_hash_pow mineblock(uint32_t noncestart,  uint32_t* version,  uint32_t* prevhash, 
                        uint32_t* merkle_root,  uint32_t* time,  uint32_t* nbits);


// void hashblock(uint32_t nonce, char* version, char* prevhash, 
//     char* merkle_root, char* time, char* nbits, uint32_t* result);
// void hashblock(uint32_t nonce, const uint32_t* version, const uint32_t* prevhash, 
//                const uint32_t* merkle_root, const uint32_t* time, const uint32_t* nbits, 
//                uint32_t* result);

void hashblock( uint32_t* blockheader,  uint32_t* result);


void bits_to_difficulty(uint32_t bits, uint32_t* difficulty);