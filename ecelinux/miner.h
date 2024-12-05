#include <stdint.h>

void mineblock(bit32_t noncestart, bit32_t version[1], bit32_t prevhash[8], 
                        bit32_t merkle_root[8], bit32_t time[1], bit32_t nbits[1], bit32_t rslt[9]);


void hashblock(bit32_t blockheader[20],  bit32_t result[8]);


void bits_to_difficulty(bit32_t bits, bit32_t* difficulty);