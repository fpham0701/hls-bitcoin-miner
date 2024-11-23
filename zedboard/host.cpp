#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <math.h>
#include <assert.h>

#include <iostream>
#include <fstream>
#include <sstream>
#include <string>

#include "typedefs.h"
#include "timer.h"
#include "miner.h"
#include "sha256.h"
#include "util.h"

using namespace std;

const int TEST_SIZE = 1; // PLACEHOLDER TEST SIZE
const int INPUT_SIZE = 20;
const int OUTPUT_SIZE = 9;

//------------------------------------------------------------------------
// helper function to parse testing data
//------------------------------------------------------------------------
void parseLine(const string &line, bit32_t inputs[TEST_SIZE][INPUT_SIZE], bit32_t expected_hashes[TEST_SIZE][OUTPUT_SIZE], int i) {
    stringstream ss(line);
    string hex;

    for (int j = 0; j < INPUT_SIZE; j++) {
        if (getline(ss, hex, ',')) {
            inputs[i][j]= strtol(hex.c_str(), NULL, 16);
        }
    }

    for (int j = 0; j < OUTPUT_SIZE; j++) {
        if (getline(ss, hex, ',')) {
            expected_hashes[i][j] = strtol(hex.c_str(), NULL, 16);
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
    bit32_t inputs[TEST_SIZE][INPUT_SIZE];
    bit32_t expected_hashes[TEST_SIZE][OUTPUT_SIZE];
    bit32_t results[TEST_SIZE][OUTPUT_SIZE];

    // Timer
    Timer timer("SHA-256 Test");
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

        // parse the line
        parseLine(line, inputs, expected_hashes, i);
    }

    // TODO THINGS TO CHANGE: can remove this w/o timer function and just run the thing (lab3)
    // OR, like lab4, run without timer, and then add performacne 20 times
    //--------------------------------------------------------------------
    // Run it once without timer to test accuracy
    //--------------------------------------------------------------------
    cout << "Testing accuracy over " << TEST_SIZE << " hashes." << endl;
    // Send data to accelerator
    for (int i = 0; i < TEST_SIZE; i++) {
        for (int j = 0; j < INPUT_SIZE; j++) {
            // send 32-bit value through the write channel
            bit32_t test_inst;

            test_inst(inputs[i][j].length()-1, 0) = inputs[i][j](inputs[i][j].length()-1,0);
            int64_t input = test_inst;

            int nbytes = write(fdw, (void *)&input, sizeof(input));
            assert(nbytes == sizeof(input));
        }
    }

    // receive data through read channel
    for (int i = 0; i < TEST_SIZE; i++) {
        for (int j = 0; j < OUTPUT_SIZE; j++) {
            bit32_t result_hash;

            int nbytes = read(fdr, (void *)&result_hash, sizeof(result_hash));
            assert(nbytes == sizeof(result_hash));
            results[i][j] = result_hash;


        }
    }

    // count errors and total test insts
    for (int i = 0; i < TEST_SIZE; i++) {
        for (int j = 0; j < OUTPUT_SIZE; j++) {
            if (expected_hashes[i][j] != results[i][j]) {
                error++;
            }
        }
        num_test_insts++;
    }

    cout << "Number of test instances: " << num_test_insts << endl;
    cout << "Overall Error Rate = " << setprecision(4) 
              << ((double)error / num_test_insts) * 100 << "%" << endl;


    myfile.close();
    
    return 0;
}