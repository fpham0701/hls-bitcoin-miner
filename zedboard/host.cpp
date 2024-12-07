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

    // Parse input values
    for (int j = 0; j < INPUT_SIZE; j++) {
        if (getline(ss, hex, ',')) {
            bit32_t value = strtol(hex.c_str(), NULL, 16);
            inputs[i][j]= value;
            cout << "Input " << j << ": " << hex << " -> " << inputs[i][j] << endl;
        }
    }

    // Parse expected output values
    for (int j = 0; j < OUTPUT_SIZE; j++) {
        if (getline(ss, hex, ',')) {

            bit32_t value = strtoul(hex.c_str(), NULL, 16);
            cout << value << endl;
            expected_hashes[i][j] = value;
            cout << "Expected " << j << ": " << hex << " -> " << expected_hashes[i][j] << endl;
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
    timer.start();

    for (int i = 0; i < TEST_SIZE; i++) {
        for (int j = 0; j < INPUT_SIZE; j++) {
            // send 32-bit value through the write channel
            bit32_t test_inst;
            test_inst(inputs[i][j].length()-1, 0) = inputs[i][j](inputs[i][j].length()-1,0);
            bit32_t input = test_inst;

            int nbytes = write(fdw, (void *)&test_inst, sizeof(test_inst));
            assert(nbytes == sizeof(test_inst));
        }
    }
    cout << endl;

    // receive data through read channel
    for (int i = 0; i < TEST_SIZE; i++) {
        for (int j = 0; j < OUTPUT_SIZE; j++) {   
            bit32_t result_hash;
            nbytes = read(fdr, (void *)&result_hash, sizeof(result_hash));
            assert(nbytes == sizeof(result_hash));
            results[i][j] = result_hash;
        }
    }

    timer.stop();

    // count errors and total test insts
    for (int i = 0; i < TEST_SIZE; i++) {
            
        if (expected_hashes[i][0] != results[i][0]) {
            error++;
            cout << "Error on Test " << i+1 << endl;
            cout << "\tExpected Result " << hex << expected_hashes[i][0] << endl;
            cout << "\tActual Result " << hex << results[i][0] << endl;
        }
        for (int j = 1; j < OUTPUT_SIZE; j++) {
            if (expected_hashes[i][j] != results[i][OUTPUT_SIZE-j]) {
                error++;
                cout << "Error on Test " << i+1 << endl;
                cout << "\tExpected Result " << hex << expected_hashes[i][j] << endl;
                cout << "\tActual Result " << hex << results[i][OUTPUT_SIZE-j] << endl;
                // break;
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