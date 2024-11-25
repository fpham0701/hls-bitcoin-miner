#include "main_tb.h"
#include "dut.h"
#include "timer.h"
#include "util.h"
#include "timer.h"
#include "miner.h"


using namespace std;


float correct = 0.0;
int main()
{
    hls::stream<bit32_t> dut_in;
    hls::stream<bit32_t> dut_out;

    // Timer
    Timer timer("SHA-256 Test");
    timer.start();


    float temp = 0.0;

    bit32_t nonce[1] = {1000};

    bit32_t version[1] = {0x01000050}; // Single 32-bit number

    bit32_t prevhash[8] = {0x00000000, 0x00000000, 0x00000000, 0x00000000, 
                            0x00000000, 0x00000000, 0x00000000, 0x00000000}; // 8 x 32-bit numbers

    bit32_t merkle_root[8] = {0x3BA3EDFD, 0x6A7B12B2, 0x4AC72C3E, 0x47768F61,
                                0x6C81BC3, 0x188A5132, 0x6A9FB8AA, 0x2B1E5E4A}; // 8 x 32-bit numbers

    bit32_t time[1] = {0x29AB5F49}; // Single 32-bit number
    
    bit32_t nbits[1] = {0x7FFF7F00};//{0x007FFFFF}; // Single 32-bit number
    
    // Partitioned total array for dut input stream
    bit32_t data_in[20] = {0};
    data_in[0] = nonce[0];
    data_in[1] = version[0];
    for(int i=2; i<10; i++){
        data_in[i] = prevhash[i-2];
    }
    for(int i=10; i<18; i++){
        data_in[i] = merkle_root[i-10];
    }
    data_in[18] = time[0];
    data_in[19] = nbits[0];
   
   // Write two 32-bit words to the input stream
    for(int i = 0; i<20; i++){
        dut_in.write(data_in[i]);
    }
    
    dut(dut_in, dut_out);
    
    // Read out 8 32-bit hashes + nonce
    bit32_t nonce_out = dut_out.read();
    bit32_t hash_out[8] = {0};
    for(int i =0; i<8; i++)
    {
        hash_out[i] = dut_out.read();
    }


    // // Use the `new_hash_pow` struct returned by `mineblock`
    // bit32_t results[8];
    // new_hash_pow result = mineblock(10, version, prevhash, merkle_root, time, nbits);
    
    // Access the nonce via `result.nonce`
    std::cout << "Block solved! Nonce: "<< std::hex << nonce_out << std::endl;
    std::cout << "Block hash:" << std::endl;
    
    // Print the hash from `result.hash`
    for (int i = 7; i >= 0; i--) {
        std::cout << i+1 << " hash : " << std::hex << hash_out[i] << std::endl;
    }
    
    timer.stop();
    
    return 0;
}

