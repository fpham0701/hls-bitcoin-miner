#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <math.h>
#include <assert.h>

#include <iostream>
#include <fstream>
#include <sstream>

#include "typedefs.h"
#include "miner.h"
#include "sha256.h"
#include "util.h"

using namespace std;

const int TEST_SIZE = 10; // PLACEHOLDER TEST SIZE
const int INPUT_SIZE = 2;
const int OUTPUT_SIZE = 8;

//------------------------------------------------------------------------
// helper function to parse testing data
//------------------------------------------------------------------------
void parseLine(const string &line, uint32_t inputArr[INPUT_SIZE], uint32_t expectedArr[OUTPUT_SIZE]) {
    stringstream ss(line);
    string hex;

    for (int i = 0; i < INPUT_SIZE; i++) {
        if (getline(ss, hex, ',')) {
            inputArr[i]= stoull(hex, nullptr, 16);
        }
    }

    for (int i = 0 < OUTPUT_SIZE; i++) {
        if (getline(ss, hex, ',')) {
            expectedArr[i] = stoull(hex, nullptr, 16);
        }
    }
}

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

    // read input file from the testing set
    string line;
    ifstream myfile("data/testing_set.dat");

    // data instantiation
    uint32_t inputs[TEST_SIZE][INPUT_SIZE];
    uint32_t expected_hashes[TEST_SIZE][OUTPUT_SIZE];
    uint32_t results[TEST_SIZE];

    // Timer
<<<<<<< Updated upstream
    Timer timer("SHA-256 Test");
=======
    Timer timer("SHA on FPGA");
>>>>>>> Stashed changes
    // intermediate results
    int nbytes;
    int error = 0;
    int num_test_insts = 0;

    if (!myfile.is_open()) {
        cout << "Unable to open file for the testing set!" << endl;
        exit(-1);
    }

    //--------------------------------------------------------------------
    // read data 
    //--------------------------------------------------------------------
    for (int i = 0; i < TEST_SIZE; i++) {
        assert(getline(myfile, line));
        uint32_t inputArr[INPUT_SIZE];
        uint32_t expectedArr[OUTPUT_SIZE];

        // parse the line
        parseLine(line, inputArr, expectedArr);

        inputs[i] = inputArr;
        expected_hashes[i] = expectedArr;
    }

    // TODO THINGS TO CHANGE: can remove this w/o timer function and just run the thing (lab3)
    // OR, like lab4, run without timer, and then add performacne 20 times
    //--------------------------------------------------------------------
    // Run it once without timer to test accuracy
    //--------------------------------------------------------------------
    cout << "Testing accuracy over " << TEST_SIZE << " hashes." << endl;
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
        if (expected_hashes[i] != results[i]) {
            error++;
        }
        num_test_insts++;
    }

    cout << "Number of test instances: " << num_test_insts << endl;
    cout << "Overall Error Rate = " << setprecision(4) 
              << ((double)error / num_test_insts) * 100 << "%" << endl;
    

    myfile.close();
    
    return 0;
}