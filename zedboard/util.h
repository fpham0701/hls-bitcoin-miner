#include <stdint.h>
#include <iomanip>
#include <string.h>
#include "typedefs.h"

typedef ap_uint<32> bit32_t;

void print_bytes(const unsigned char *data, size_t dataLen);//, bool format = true);

void print_bytes_reversed(const unsigned char *data, size_t dataLen);// bool format = true);

bit32_t Reverse32(bit32_t value);

unsigned char* hexstr_to_char(const char* hexstr);

void hexstr_to_intarray(const char* hexstr, bit32_t* outputloc);