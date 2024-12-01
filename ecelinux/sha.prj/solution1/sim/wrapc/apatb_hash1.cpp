// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================

#define AP_INT_MAX_W 32678

#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;


// [dump_struct_tree [build_nameSpaceTree] dumpedStructList] ---------->


// [dump_enumeration [get_enumeration_list]] ---------->


// wrapc file define: "input_V"
#define AUTOTB_TVIN_input_V  "../tv/cdatafile/c.hash1.autotvin_input_V.dat"
// wrapc file define: "bitlength"
#define AUTOTB_TVIN_bitlength  "../tv/cdatafile/c.hash1.autotvin_bitlength.dat"
// wrapc file define: "outputlocation_V"
#define AUTOTB_TVOUT_outputlocation_V  "../tv/cdatafile/c.hash1.autotvout_outputlocation_V.dat"
#define AUTOTB_TVIN_outputlocation_V  "../tv/cdatafile/c.hash1.autotvin_outputlocation_V.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "outputlocation_V"
#define AUTOTB_TVOUT_PC_outputlocation_V  "../tv/rtldatafile/rtl.hash1.autotvout_outputlocation_V.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			input_V_depth = 0;
			bitlength_depth = 0;
			outputlocation_V_depth = 0;
			trans_num =0;
		}

		~INTER_TCL_FILE() {
			mFile.open(mName);
			if (!mFile.good()) {
				cout << "Failed to open file ref.tcl" << endl;
				exit (1);
			}
			string total_list = get_depth_list();
			mFile << "set depth_list {\n";
			mFile << total_list;
			mFile << "}\n";
			mFile << "set trans_num "<<trans_num<<endl;
			mFile.close();
		}

		string get_depth_list () {
			stringstream total_list;
			total_list << "{input_V " << input_V_depth << "}\n";
			total_list << "{bitlength " << bitlength_depth << "}\n";
			total_list << "{outputlocation_V " << outputlocation_V_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int input_V_depth;
		int bitlength_depth;
		int outputlocation_V_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern void hash1 (
ap_uint<32> input[20],
int bitlength,
ap_uint<32> outputlocation[9]);

void AESL_WRAP_hash1 (
ap_uint<32> input[20],
int bitlength,
ap_uint<32> outputlocation[9])
{
	refine_signal_handler();
	fstream wrapc_switch_file_token;
	wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
	int AESL_i;
	if (wrapc_switch_file_token.good())
	{
		CodeState = ENTER_WRAPC_PC;
		static unsigned AESL_transaction_pc = 0;
		string AESL_token;
		string AESL_num;
		static AESL_FILE_HANDLER aesl_fh;


		// output port post check: "outputlocation_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_outputlocation_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_outputlocation_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_outputlocation_V, AESL_token); // data

			sc_bv<32> *outputlocation_V_pc_buffer = new sc_bv<32>[9];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'outputlocation_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'outputlocation_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					outputlocation_V_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_outputlocation_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_outputlocation_V))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: outputlocation_V
				{
					// bitslice(31, 0)
					// {
						// celement: outputlocation.V(31, 0)
						// {
							sc_lv<32>* outputlocation_V_lv0_0_8_1 = new sc_lv<32>[9];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: outputlocation.V(31, 0)
						{
							// carray: (0) => (8) @ (1)
							for (int i_0 = 0; i_0 <= 8; i_0 += 1)
							{
								if (&(outputlocation[0]) != NULL) // check the null address if the c port is array or others
								{
									outputlocation_V_lv0_0_8_1[hls_map_index].range(31, 0) = sc_bv<32>(outputlocation_V_pc_buffer[hls_map_index].range(31, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: outputlocation.V(31, 0)
						{
							// carray: (0) => (8) @ (1)
							for (int i_0 = 0; i_0 <= 8; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : outputlocation[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : outputlocation[0]
								// output_left_conversion : outputlocation[i_0]
								// output_type_conversion : (outputlocation_V_lv0_0_8_1[hls_map_index]).to_string(SC_BIN).c_str()
								if (&(outputlocation[0]) != NULL) // check the null address if the c port is array or others
								{
									outputlocation[i_0] = (outputlocation_V_lv0_0_8_1[hls_map_index]).to_string(SC_BIN).c_str();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] outputlocation_V_pc_buffer;
		}

		AESL_transaction_pc++;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "input_V"
		char* tvin_input_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_input_V);

		// "bitlength"
		char* tvin_bitlength = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_bitlength);

		// "outputlocation_V"
		char* tvin_outputlocation_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_outputlocation_V);
		char* tvout_outputlocation_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_outputlocation_V);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// [[transaction]]
		sprintf(tvin_input_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_input_V, tvin_input_V);

		sc_bv<32>* input_V_tvin_wrapc_buffer = new sc_bv<32>[20];

		// RTL Name: input_V
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: input.V(31, 0)
				{
					// carray: (0) => (19) @ (1)
					for (int i_0 = 0; i_0 <= 19; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : input[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : input[0]
						// regulate_c_name       : input_V
						// input_type_conversion : (input[i_0]).to_string(2).c_str()
						if (&(input[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> input_V_tmp_mem;
							input_V_tmp_mem = (input[i_0]).to_string(2).c_str();
							input_V_tvin_wrapc_buffer[hls_map_index].range(31, 0) = input_V_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 20; i++)
		{
			sprintf(tvin_input_V, "%s\n", (input_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_input_V, tvin_input_V);
		}

		tcl_file.set_num(20, &tcl_file.input_V_depth);
		sprintf(tvin_input_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_input_V, tvin_input_V);

		// release memory allocation
		delete [] input_V_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_bitlength, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_bitlength, tvin_bitlength);

		sc_bv<32> bitlength_tvin_wrapc_buffer;

		// RTL Name: bitlength
		{
			// bitslice(31, 0)
			{
				// celement: bitlength(31, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : bitlength
						// sub_1st_elem          : 
						// ori_name_1st_elem     : bitlength
						// regulate_c_name       : bitlength
						// input_type_conversion : bitlength
						if (&(bitlength) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> bitlength_tmp_mem;
							bitlength_tmp_mem = bitlength;
							bitlength_tvin_wrapc_buffer.range(31, 0) = bitlength_tmp_mem.range(31, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_bitlength, "%s\n", (bitlength_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_bitlength, tvin_bitlength);
		}

		tcl_file.set_num(1, &tcl_file.bitlength_depth);
		sprintf(tvin_bitlength, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_bitlength, tvin_bitlength);

		// [[transaction]]
		sprintf(tvin_outputlocation_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_outputlocation_V, tvin_outputlocation_V);

		sc_bv<32>* outputlocation_V_tvin_wrapc_buffer = new sc_bv<32>[9];

		// RTL Name: outputlocation_V
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: outputlocation.V(31, 0)
				{
					// carray: (0) => (8) @ (1)
					for (int i_0 = 0; i_0 <= 8; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : outputlocation[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : outputlocation[0]
						// regulate_c_name       : outputlocation_V
						// input_type_conversion : (outputlocation[i_0]).to_string(2).c_str()
						if (&(outputlocation[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> outputlocation_V_tmp_mem;
							outputlocation_V_tmp_mem = (outputlocation[i_0]).to_string(2).c_str();
							outputlocation_V_tvin_wrapc_buffer[hls_map_index].range(31, 0) = outputlocation_V_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 9; i++)
		{
			sprintf(tvin_outputlocation_V, "%s\n", (outputlocation_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_outputlocation_V, tvin_outputlocation_V);
		}

		tcl_file.set_num(9, &tcl_file.outputlocation_V_depth);
		sprintf(tvin_outputlocation_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_outputlocation_V, tvin_outputlocation_V);

		// release memory allocation
		delete [] outputlocation_V_tvin_wrapc_buffer;

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		hash1(input, bitlength, outputlocation);

		CodeState = DUMP_OUTPUTS;

		// [[transaction]]
		sprintf(tvout_outputlocation_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_outputlocation_V, tvout_outputlocation_V);

		sc_bv<32>* outputlocation_V_tvout_wrapc_buffer = new sc_bv<32>[9];

		// RTL Name: outputlocation_V
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: outputlocation.V(31, 0)
				{
					// carray: (0) => (8) @ (1)
					for (int i_0 = 0; i_0 <= 8; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : outputlocation[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : outputlocation[0]
						// regulate_c_name       : outputlocation_V
						// input_type_conversion : (outputlocation[i_0]).to_string(2).c_str()
						if (&(outputlocation[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> outputlocation_V_tmp_mem;
							outputlocation_V_tmp_mem = (outputlocation[i_0]).to_string(2).c_str();
							outputlocation_V_tvout_wrapc_buffer[hls_map_index].range(31, 0) = outputlocation_V_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 9; i++)
		{
			sprintf(tvout_outputlocation_V, "%s\n", (outputlocation_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_outputlocation_V, tvout_outputlocation_V);
		}

		tcl_file.set_num(9, &tcl_file.outputlocation_V_depth);
		sprintf(tvout_outputlocation_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_outputlocation_V, tvout_outputlocation_V);

		// release memory allocation
		delete [] outputlocation_V_tvout_wrapc_buffer;

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "input_V"
		delete [] tvin_input_V;
		// release memory allocation: "bitlength"
		delete [] tvin_bitlength;
		// release memory allocation: "outputlocation_V"
		delete [] tvout_outputlocation_V;
		delete [] tvin_outputlocation_V;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}

