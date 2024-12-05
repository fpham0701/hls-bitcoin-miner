#include "hash_round.hpp"

#define INPUT_SIZE 20

// // Rotate function optimized with inlining
// bit32_t rotateInt(bit32_t inputWord, int numberOfBitsToRotate) {
//     #pragma HLS inline
//     int bitWidth = 32; // SHA-256 uses 32-bit words
//     numberOfBitsToRotate = numberOfBitsToRotate % bitWidth;

//     bit32_t tempWord = inputWord;
//     inputWord = inputWord >> numberOfBitsToRotate;
//     tempWord = tempWord << (bitWidth - numberOfBitsToRotate);

//     return inputWord | tempWord;
// }

// // Inline small functions
// int Ch(int x, int y, int z) {
//     #pragma HLS inline
//     return ((x & y) ^ (~x & z));
// }

// int Maj(int x, int y, int z) {
//     #pragma HLS inline
//     return ((x & y) ^ (x & z) ^ (y & z));
// }

// int Sig0f(int x) {
//     #pragma HLS inline
//     return (rotateInt(x, 2) ^ rotateInt(x, 13) ^ rotateInt(x, 22));
// }

// int Sig1f(int x) {
//     #pragma HLS inline
//     return (rotateInt(x, 6) ^ rotateInt(x, 11) ^ (rotateInt(x, 25)));
// }

// bit32_t sig0(bit32_t x) {
//     #pragma HLS inline
//     return (rotateInt(x, 7) ^ rotateInt(x, 18) ^ (x >> 3));
// }

// bit32_t sig1(bit32_t x) {
//     #pragma HLS inline
//     return (rotateInt(x, 17) ^ rotateInt(x, 19) ^ (x >> 10));
// }

// // Helper function to prepare the message schedule
// void prepareMessage(bit32_t input[INPUT_SIZE], int bitlength, bit32_t M[32][16]) {
//     #pragma HLS array_partition variable=M complete dim=2

//     for (int i = 0; i < 32; i++) {
//         for (int j = 0; j < 16; j++) {
//             #pragma HLS unroll
//             M[i][j] = 0;
//         }
//     }

//     bit32_t message[10000] = {};
//     int wordlength = bitlength / 32 + 1;

//     for (int i = 0; i < wordlength; i++) {
//         #pragma HLS pipeline II=1
//         message[i] = input[i];
//     }

//     if (bitlength % 32 != 0)
//         message[bitlength / 32] |= (1 << (31 - bitlength % 32));
//     else
//         message[bitlength / 32] = 1 << 31;

//     if (wordlength % 16 == 0 || wordlength % 16 == 15)
//         message[wordlength + 15 + 16 - wordlength % 16] = bitlength;
//     else
//         message[wordlength + 15 - wordlength % 16] = bitlength;

//     for (int i = 0; i < 16; i++) {
//         for (int j = 0; j <= (bitlength / 512 + 1); j++) {
//             #pragma HLS unroll
//             M[j][i] = message[i + j * 16];
//         }
//     }
// }

// void computeHashRound(bit32_t H_prev[8], bit32_t M[16], bit32_t K[64], bit32_t H_new[8]) {
//     #pragma HLS array_partition variable=H_prev complete dim = 1
//     #pragma HLS array_partition variable=H_nwq complete dim = 1
//     #pragma HLS array_partition variable=M complete
//     #pragma HLS array_partition variable=K complete dim =1

//     bit32_t W[64] = {0};
//     #pragma HLS array_partition variable=W complete

//     // #pragma pipeline II=2
//     for (int j = 0; j < 64; j++) {
//         #pragma HLS unroll
//         if (j < 16)
//             W[j] = M[j];
//         else
//             W[j] = sig1(W[j - 2]) + W[j - 7] + sig0(W[j - 15]) + W[j - 16];
//     }

//     // #pragma HLS dataflow
//     // #pragma HLS pipeline II=2
//     bit32_t a = H_prev[0];
//     bit32_t b = H_prev[1];
//     bit32_t c = H_prev[2];
//     bit32_t d = H_prev[3];
//     bit32_t e = H_prev[4];
//     bit32_t f = H_prev[5];
//     bit32_t g = H_prev[6];
//     bit32_t h = H_prev[7];

//     for (int j = 0; j < 64; j++) {
//         #pragma HLS unroll
//         bit32_t ch = Ch(e, f, g);
//         bit32_t maj = Maj(a, b, c);
//         bit32_t Sig0 = Sig0f(a);
//         bit32_t Sig1 = Sig1f(e);

//         bit32_t T1 = h + Sig1 + ch + K[j] + W[j];
//         bit32_t T2 = Sig0 + maj;

//         h = g;
//         g = f;
//         f = e;
//         e = d + T1;
//         d = c;
//         c = b;
//         b = a;
//         a = T1 + T2;
//     }
//     // #pragma HLS dataflow
//     H_new[0] = a + H_prev[0];
//     H_new[1] = b + H_prev[1];
//     H_new[2] = c + H_prev[2];
//     H_new[3] = d + H_prev[3];
//     H_new[4] = e + H_prev[4];
//     H_new[5] = f + H_prev[5];
//     H_new[6] = g + H_prev[6];
//     H_new[7] = h + H_prev[7];
// }



// Helper function to prepare the message schedule
void prepareMessage(bit32_t input[INPUT_SIZE], int bitlength, bit32_t M[32][16]) {
    #pragma HLS array_partition variable=M complete dim=2

    for (int i = 0; i < 32; i++) {
        for (int j = 0; j < 16; j++) {
            #pragma HLS unroll
            M[i][j] = 0;
        }
    }

    bit32_t message[10000] = {};
    // int wordlength = bitlength / 32 + 1; // bitlength = 640
    int wordlength = bitlength / 32 ; // bitlength = 640

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
            #pragma HLS unroll
            M[j][i] = message[i + j * 16];
        }
    }
}

