#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <math.h>
#include <assert.h>

#include <iostream>
#include <fstream>

#include "typedefs.h"
#include "miner.h"
#include "sha256.h"
#include "util.h"

const int TEST_SIZE = 100; // PLACEHOLDER TEST SIZE
// TODO choose to add file write option or not


//--------------------------------------
// main function
//--------------------------------------
int main(int arc, char **argv) {
    // Open channels to the FPGA board.
    // These channels appear as files to the Linux OS
    int fdr = open("/dev/xillybus_read_32", O_RDONLY);
    int fdw = open("/dev/xillybus_write_32", O_WRONLY);

    // Check that the channels are correctly opened
    if ((fdr < 0) || (fdw < 0)) {
    fprintf(stderr, "Failed to open Xillybus device channels\n");
    exit(-1);
    }

    // data instantiation
    // TODO: input array
    uint32_t expected_hashes[TEST_SIZE];
    uint32_t results[TEST_SIZE];

    // Timer
    Timer timer("SHA-256 Test");
    // intermediate results
    int nbytes;
    int error = 0;
    int num_test_insts = 0;
    float correct = 0.0;

    //--------------------------------------------------------------------
    // read data (TODO)
    //--------------------------------------------------------------------

    // TODO THINGS TO CHANGE: can remove this w/o timer function and just run the thing (lab3)
    // OR, like lab4, run without timer, and then add performacne 20 times
    //--------------------------------------------------------------------
    // Run it once without timer to test accuracy
    //--------------------------------------------------------------------
    std::cout << "Testing accuracy over " << TEST_SIZE << " hashes." << std::endl;
    // Send data to accelerator
    for (int i = 0; i < TEST_SIZE; i++) {
        // send 32-bit value through the write channel
        bit64_t test_inst;

        test_inst(inputs[i].length()-1, 0) = inputs[i](inputs[i].length()-1,0);
        int64_t input = test_inst;

        nbytes = write(fdw, (void *)&input, sizeof(input));
        assert(nbytes == sizeof(input));
    }

    // receive data through read channel
    for (int i = 0; i < TEST_SIZE; i++) {
        uint32_t result_hash;

        int nbytes = read(fdr, (void *)&result_hash, sizeof(result_hash));
        assert(nbytes == sizeof(result_hash));

        results[i] = result_hash;
    }

    // count errors and total test insts
    for (int i = 0; i < N; i++) {
        if (expected[i] != results[i]) {
            error++;
        }
        num_test_insts++;
    }

    std::cout << "Numeber of test instances: " << num_test_insts << std::endl;
    std::cout << "Overall Error Rate = " << std::setprecision(4) 
              << ((double)error / num_test_insts) * 100 << "%" << std::endl;

    return 0;
}