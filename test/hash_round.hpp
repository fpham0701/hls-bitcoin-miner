#include <ap_int.h>

typedef bool bit;
typedef ap_int<8> bit8_t;
typedef ap_int<16> bit16_t;
typedef ap_uint<2> bit2_t;
typedef ap_uint<4> bit4_t;
typedef ap_uint<32> bit32_t;
typedef ap_uint<64> bit64_t;

void computeHashRound(bit32_t H_prev[8], bit32_t M[16], bit32_t K[64], bit32_t H_new[8]);
