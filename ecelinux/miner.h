#include <stdint.h>
typedef ap_uint<32> bit32_t;

// new_hash_pow mineblock(bit32_t noncestart, char* version, char* prevhash, char* merkle_root, char* time, char* nbits);
new_hash_pow mineblock(bit32_t noncestart, const bit32_t* version, const bit32_t* prevhash, 
                       const bit32_t* merkle_root, const bit32_t* time, const bit32_t* nbits);


// void hashblock(bit32_t nonce, char* version, char* prevhash, 
//     char* merkle_root, char* time, char* nbits, bit32_t* result);
void hashblock(bit32_t nonce, const bit32_t* version, const bit32_t* prevhash, 
               const bit32_t* merkle_root, const bit32_t* time, const bit32_t* nbits, 
               bit32_t* result);


void bits_to_difficulty(bit32_t bits, bit32_t* difficulty);