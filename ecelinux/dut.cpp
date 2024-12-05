#include "dut.h"
#include "sha256.h"
#include "util.h"
#include "timer.h"
#include "miner.h"

#include <iostream>

using namespace std;

void dut(hls::stream<bit32_t> &strm_in, hls::stream<bit32_t> &strm_out) {
    bit32_t rslt[9];

    bit32_t nonce = strm_in.read();

    bit32_t version[1];
    version[0] = strm_in.read();

    bit32_t prevhash[8];
    for (int i = 0; i < 8; i++) {
        prevhash[i] = strm_in.read();
    }

    bit32_t merkle_root[8];
    for (int i = 0; i < 8; i++) {
        merkle_root[i] = strm_in.read();
    }

    bit32_t time[1];
    time[0] = strm_in.read();

    bit32_t nbits[1];
    nbits[0] = strm_in.read();

    std::cout << "Nonce: " << nonce << std::endl;
    std::cout << "Time: " << time[0] << std::endl;
    
    mineblock(nonce, version, prevhash, merkle_root, time, nbits, rslt);
    
    for (int i = 0; i < 9; i++) {
        std::cout << "ResultsII " << i << ": " << rslt[i] << std::endl;
        strm_out.write(rslt[i]);
    }
}