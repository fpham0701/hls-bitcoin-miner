#include <hls_stream.h>
#include "typedefs.h"

// typedef ap_uint<32> bit32_t;

void dut(hls::stream<bit32_t> &strm_in, hls::stream<bit32_t> &strm_out);
