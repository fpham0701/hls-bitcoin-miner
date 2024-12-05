#include <ap_int.h>

typedef bool bit;
typedef ap_int<8> bit8_t;
typedef ap_int<16> bit16_t;
typedef ap_uint<2> bit2_t;
typedef ap_uint<4> bit4_t;
typedef ap_uint<32> bit32_t;
typedef ap_uint<64> bit64_t;

#define INPUT_SIZE 20


void computeHashRound(bit32_t H_prev[8], bit32_t M[16], bit32_t K[64], bit32_t H_new[8]);
void prepareMessage(bit32_t input[INPUT_SIZE], int bitlength, bit32_t M[32][16]);
