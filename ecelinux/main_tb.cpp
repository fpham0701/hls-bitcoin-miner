#include "main_tb.h"
#include "dut.h"
#include "timer.h"
#include "util.h"
#include "timer.h"
#include "miner.h"


using namespace std;

// typedef ap_uint<32> uint32_t;

// // Test data and labels (hardcoded for demonstration)
// const int TEST_SIZE = 10;  // Define the number of tests
// const uint32_t test_data[TEST_SIZE][2] = {
//     {0x12345678, 0x9abcdef0}, {0x11111111, 0x22222222},
//     {0x33333333, 0x44444444}, {0x55555555, 0x66666666},
//     {0x77777777, 0x88888888}, {0x99999999, 0xaaaaaaaa},
//     {0xbbbbbbbb, 0xcccccccc}, {0xdddddddd, 0xeeeeeeee},
//     {0xffffffff, 0x00000000}, {0xabcdef12, 0x34567890}
// };
// const uint32_t test_labels[TEST_SIZE][8] = {{0x62548d05, 0x442a0fe2, 0xf17c9a7f, 0x5e5d4aed, 0x129b21fe, 0x43999f5d, 0x74227914, 0x668592d1},
//                                             {0xbc433ba9, 0x6f739876, 0x7e37f3a0, 0xb4fc13fe, 0x88707380, 0x897b561c, 0x490d4d60, 0x88b20b77},
//                                             {0xe9f4fc8f, 0x8a6c103b, 0xea606203, 0x62ab7815, 0xa7ec65e5, 0x47f26221, 0x5067c852, 0xb744a6af},
//                                             {0x2367968c, 0x8611e596, 0x2ea119f3, 0x5ebae89a, 0x1f0807d4, 0xefd9cdb2, 0x4ab3bb64, 0x599f563b},
//                                             {0x1a14aff9, 0xf75ff419, 0x291b7ae6, 0xd6356a92, 0x851d748c, 0x5bc8d0c1, 0xb287b62e, 0x955562e2},
//                                             {0x9de4341f, 0xa1b96248, 0x79703021, 0x6f305065, 0x11516393, 0xe8fc32c5, 0x53f24cf4, 0x657c6270},
//                                             {0x5503b284, 0x144b2dc1, 0x96e893d5, 0x937eeaa2, 0xddeb6163, 0xa9b73291, 0x0f011453, 0x0ff7e435},
//                                             {0x6d0e84b7, 0x045db610, 0xc96354ec, 0x069c7bcd, 0x1e78e4b , 0x7bf941fd, 0x40215b5d, 0x6dd3490a},
//                                             {0x72a4fa35, 0x44e43a83, 0x6ffcb268, 0xce06ccdb, 0xc55d44d5, 0xe6b1b1c1, 0x9216a53e, 0xa98301fd},
//                                             {0xeb5f4f42, 0xe353764d, 0xaad987ef, 0x5b3a5df7, 0x9339b021, 0xf08e90b1, 0xf00e1e7a, 0x79b15972} 
//                                         }; 

float correct = 0.0;
int main()
{
    hls::stream<uint32_t> dut_in;
    hls::stream<uint32_t> dut_out;

    // Timer
    Timer timer("SHA-256 Test");
    timer.start();


    float temp = 0.0;

    uint32_t shit[20];

    uint32_t version[] = {10};//{0x01000000}; // Single 32-bit number

    uint32_t prevhash[] = {0x00000000, 0x00000000, 0x00000000, 0x00000000, 
                            0x00000000, 0x00000000, 0x00000000, 0x00000000}; // 8 x 32-bit numbers

    uint32_t merkle_root[] = {0x3BA3EDFD, 0x7A7B12B2, 0x7AC72C3E, 0x67768F61,
                                0x7FC81BC3, 0x888A5132, 0x3A9FB8AA, 0x4B1E5E4A}; // 8 x 32-bit numbers

    uint32_t time[] = {0x29AB5F49}; // Single 32-bit number
    
    uint32_t nbits[] = {0xFFFF7F00};//{0x007FFFFF}; // Single 32-bit number

    shit[0] = version[0];
    shit[1] = prevhash[0];
    for(int i=2; i<10; i++){
        shit[i] = merkle_root[i-2];
    }
    shit[11] = time[0];
    shit[12] = nbits[0];
   
   // Write two 32-bit words to the input stream
    for(int i = 0; i<20; i++){
        dut_in.write(shit[i]);
    }
    
    dut(dut_in, dut_out);
    
    // Read out 8 32-bit hashes + nonce
    uint32_t nonce_out = dut_out.read();
    uint32_t hash_out[8];
    for(int i =0; i<8; i++)
    {
        hash_out[i] = dut_out.read();
    }


    // // Use the `new_hash_pow` struct returned by `mineblock`
    // uint32_t results[8];
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

// int main()
// {
//     // Genesis Block info
//     char version[] = "01000000";
//     char prevhash[] = "0000000000000000000000000000000000000000000000000000000000000000";
//     char merkle_root[] = "3BA3EDFD7A7B12B27AC72C3E67768F617FC81BC3888A51323A9FB8AA4B1E5E4A";
//     char time[] = "29AB5F49";
//     char nbits[] = "007FFFFF"; //"FFFF001D";

//     // uint32_t result[8];
//     //uint32_t nonce = mineblock(2083236890, version, prevhash, merkle_root, time, nbits);
//     new_hash_pow result = mineblock(10, version, prevhash, merkle_root, time, nbits);
    
//     std::cout << "Block solved! Nonce: " << nonce << std::endl;
//     std::cout << "Block hash:" << std::endl;
    
//     // hashblock(nonce, version, prevhash, merkle_root, time, nbits, result);
//     std::cout << "nonce : " << std::hex <<  result.nonce  << std::endl;
//     for(int i = 7; i > -1; i--) {
//         // printf("%08x ", result.hash[i]);
//         std::cout << i+1 << std::hex << " hash : " <<  result.hash[i] << std::endl;
//         // result[i] = Reverse32(result[i]);
//         // std::cout << i << std::hex << "result : " <<  result[i]  << std::endl;
//     }
    
//     return 0;
// }

// int main() {
//     hls::stream<uint32_t> dut_in;
//     hls::stream<uint32_t> dut_out;

//     // Timer
//     Timer timer("SHA-256 Test");
//     timer.start();

//     // Transmit 64-bit test data to dut function and get results
//     for (int test = 0; test < TEST_SIZE; test++) {
//         float temp = 0.0;
//         // Write two 32-bit words to the input stream
//         dut_in.write(test_data[test][0]); // Lower 32 bits
//         dut_in.write(test_data[test][1]); // Higher 32 bits

//         // Perform hash computation
//         dut(dut_in, dut_out);

//         // Read back the 256-bit result (8 x 32-bit words) and print it
//         // std::cout << "Test " << test << " result: ";
//         // std::cout << std::endl;
//         uint32_t result_word[8];
//         for (int i = 0; i < 8; i++) 
//         {
//             result_word[i] = dut_out.read();
//             // std::cout << std::hex << result_word[i].to_uint() << " ";
//             // std::cout << std::endl;

//             // std::cout << "result : " <<  result_word[i] << " test " << test_labels[test][i] << std::endl;
//             if (result_word[i] == test_labels[test][i])  temp += 1.0;

//         }

//         if (temp == 8.0) 
//         {
//             correct += 1.0;
//             //  std::cout << "Test : " <<  test << " is correct" << std::endl;
//         }

//     }
//     timer.stop();

//     // Calculate accuracy
//     std::cout << "Accuracy: " << correct / TEST_SIZE << std::endl;

//     return 0;
// }

