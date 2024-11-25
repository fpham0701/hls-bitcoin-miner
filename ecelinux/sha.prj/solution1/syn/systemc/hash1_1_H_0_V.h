// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __hash1_1_H_0_V_H__
#define __hash1_1_H_0_V_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct hash1_1_H_0_V_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 32;
  static const unsigned AddressRange = 8;
  static const unsigned AddressWidth = 3;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(hash1_1_H_0_V_ram) {
        ram[0] = "0b01101010000010011110011001100111";
        ram[1] = "0b10111011011001111010111010000101";
        ram[2] = "0b00111100011011101111001101110010";
        ram[3] = "0b10100101010011111111010100111010";
        ram[4] = "0b01010001000011100101001001111111";
        ram[5] = "0b10011011000001010110100010001100";
        ram[6] = "0b00011111100000111101100110101011";
        ram[7] = "0b01011011111000001100110100011001";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(hash1_1_H_0_V) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 8;
static const unsigned AddressWidth = 3;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


hash1_1_H_0_V_ram* meminst;


SC_CTOR(hash1_1_H_0_V) {
meminst = new hash1_1_H_0_V_ram("hash1_1_H_0_V_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~hash1_1_H_0_V() {
    delete meminst;
}


};//endmodule
#endif
