//165 LATENCY - 113% utilization 
// //V2, based on v1, but fully unroll
#include <iostream>
#include "typedefs.h"
#include "sha256.h"

// Rotate function optimized with inlining
bit32_t rotateInt(bit32_t inputWord, int numberOfBitsToRotate) {
    #pragma HLS inline
    int bitWidth = 32; // SHA-256 uses 32-bit words
    numberOfBitsToRotate = numberOfBitsToRotate % bitWidth;

    bit32_t tempWord = inputWord;
    inputWord = inputWord >> numberOfBitsToRotate;
    tempWord = tempWord << (bitWidth - numberOfBitsToRotate);

    return inputWord | tempWord;
}

// Inline small functions
int Ch(int x, int y, int z) {
    #pragma HLS inline
    return ((x & y) ^ (~x & z));
}

int Maj(int x, int y, int z) {
    #pragma HLS inline
    return ((x & y) ^ (x & z) ^ (y & z));
}

int Sig0f(int x) {
    #pragma HLS inline
    return (rotateInt(x, 2) ^ rotateInt(x, 13) ^ rotateInt(x, 22));
}

int Sig1f(int x) {
    #pragma HLS inline
    return (rotateInt(x, 6) ^ rotateInt(x, 11) ^ (rotateInt(x, 25)));
}

bit32_t sig0(bit32_t x) {
    #pragma HLS inline
    return (rotateInt(x, 7) ^ rotateInt(x, 18) ^ (x >> 3));
}

bit32_t sig1(bit32_t x) {
    #pragma HLS inline
    return (rotateInt(x, 17) ^ rotateInt(x, 19) ^ (x >> 10));
}

// Helper function to prepare the message schedule
void prepareMessage(bit32_t *input, int bitlength, bit32_t M[32][16]) {
    #pragma HLS array_partition variable=M complete dim=2

    bit32_t message[10000] = {};
    int wordlength = bitlength / 32 + 1;

    for (int i = 0; i < wordlength; i++) {
        #pragma HLS pipeline II=1
        message[i] = input[i];
    }

    if (bitlength % 32 != 0)
        message[bitlength / 32] |= (1 << (31 - bitlength % 32));
    else
        message[bitlength / 32] = 1 << 31;

    if (wordlength % 16 == 0 || wordlength % 16 == 15)
        message[wordlength + 15 + 16 - wordlength % 16] = bitlength;
    else
        message[wordlength + 15 - wordlength % 16] = bitlength;
    
    for (int i = 0; i < 16; i++) {
        for (int j = 0; j <= (bitlength / 512 + 1); j++) {
            #pragma HLS unroll factor = 2
            M[j][i] = message[i + j * 16];
        }
    }
}

// Helper function to compute a single hash round
void computeHashRound(bit32_t H_prev[8], bit32_t M[16], bit32_t K[64], bit32_t H_new[8]) {
    #pragma HLS array_partition variable=H_prev complete dim = 1
    #pragma HLS array_partition variable=H_nwq complete dim = 1
    #pragma HLS array_partition variable=M complete
    #pragma HLS array_partition variable=K complete dim =1

    bit32_t W[64];
    #pragma HLS array_partition variable=W complete

    // #pragma pipeline II=2
    for (int j = 0; j < 64; j++) {
        #pragma HLS unroll 
        if (j < 16)
            W[j] = M[j];
        else
            W[j] = sig1(W[j - 2]) + W[j - 7] + sig0(W[j - 15]) + W[j - 16];
    }

    // #pragma HLS dataflow
    // #pragma HLS pipeline II=2
    bit32_t a = H_prev[0];
    bit32_t b = H_prev[1];
    bit32_t c = H_prev[2];
    bit32_t d = H_prev[3];
    bit32_t e = H_prev[4];
    bit32_t f = H_prev[5];
    bit32_t g = H_prev[6];
    bit32_t h = H_prev[7];

    for (int j = 0; j < 64; j++) {
        #pragma HLS unroll
        bit32_t ch = Ch(e, f, g);
        bit32_t maj = Maj(a, b, c);
        bit32_t Sig0 = Sig0f(a);
        bit32_t Sig1 = Sig1f(e);

        bit32_t T1 = h + Sig1 + ch + K[j] + W[j];
        bit32_t T2 = Sig0 + maj;

        h = g;
        g = f;
        f = e;
        e = d + T1;
        d = c;
        c = b;
        b = a;
        a = T1 + T2;
    }
    // #pragma HLS dataflow
    H_new[0] = a + H_prev[0];
    H_new[1] = b + H_prev[1];
    H_new[2] = c + H_prev[2];
    H_new[3] = d + H_prev[3];
    H_new[4] = e + H_prev[4];
    H_new[5] = f + H_prev[5];
    H_new[6] = g + H_prev[6];
    H_new[7] = h + H_prev[7];
}

// Main SHA-256 function
void hash1(bit32_t *input, int bitlength, bit32_t *outputlocation) {
    #pragma HLS dataflow

    bit32_t H_0[8] = {0x6a09e667, 0xbb67ae85, 0x3c6ef372, 0xa54ff53a, 
                      0x510e527f, 0x9b05688c, 0x1f83d9ab, 0x5be0cd19};
    bit32_t K[64] = {0x428a2f98, 0x71374491, 0xb5c0fbcf, 0xe9b5dba5,
                     0x3956c25b, 0x59f111f1, 0x923f82a4, 0xab1c5ed5,
                     0xd807aa98, 0x12835b01, 0x243185be, 0x550c7dc3,
                     0x72be5d74, 0x80deb1fe, 0x9bdc06a7, 0xc19bf174,
                     0xe49b69c1, 0xefbe4786, 0x0fc19dc6, 0x240ca1cc,
                     0x2de92c6f, 0x4a7484aa, 0x5cb0a9dc, 0x76f988da,
                     0x983e5152, 0xa831c66d, 0xb00327c8, 0xbf597fc7,
                     0xc6e00bf3, 0xd5a79147, 0x06ca6351, 0x14292967,
                     0x27b70a85, 0x2e1b2138, 0x4d2c6dfc, 0x53380d13,
                     0x650a7354, 0x766a0abb, 0x81c2c92e, 0x92722c85,
                     0xa2bfe8a1, 0xa81a664b, 0xc24b8b70, 0xc76c51a3,
                     0xd192e819, 0xd6990624, 0xf40e3585, 0x106aa070,
                     0x19a4c116, 0x1e376c08, 0x2748774c, 0x34b0bcb5,
                     0x391c0cb3, 0x4ed8aa4a, 0x5b9cca4f, 0x682e6ff3,
                     0x748f82ee, 0x78a5636f, 0x84c87814, 0x8cc70208,
                     0x90befffa, 0xa4506ceb, 0xbef9a3f7, 0xc67178f2};


    bit32_t M[32][16];
    #pragma HLS array_partition variable=M complete dim=2

    bit32_t H[8];
    #pragma HLS array_partition variable=H complete dim = 1

    for (int i = 0; i < 8; i++) {
        #pragma HLS unroll
        H[i] = H_0[i];
    }

    prepareMessage(input, bitlength, M);

    int rounds = (bitlength / 512 + 1);
    for (int i = 1; i <= rounds; i++) {
        #pragma HLS pipeline II=1
        computeHashRound(H, M[i - 1], K, H);
    }

    for (int i = 0; i < 8; i++) {
        #pragma HLS unroll
        outputlocation[i] = H[i];
    }
}