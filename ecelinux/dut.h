#include <hls_stream.h>
#include "typedefs.h"

// typedef ap_uint<32> bit32_t;

// void dut(hls::stream<bit32_t> &strm_in, hls::stream<bit32_t> &strm_out);
void dut(const bit32_t data_in[20], bit32_t data_out[9]);
// void dut(bit32_t* data_in, new_hash_pow& output);