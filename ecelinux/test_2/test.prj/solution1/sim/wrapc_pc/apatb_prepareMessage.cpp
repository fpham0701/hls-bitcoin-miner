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
#define AUTOTB_TVIN_input_V  "../tv/cdatafile/c.prepareMessage.autotvin_input_V.dat"
// wrapc file define: "bitlength"
#define AUTOTB_TVIN_bitlength  "../tv/cdatafile/c.prepareMessage.autotvin_bitlength.dat"
// wrapc file define: "M_0_V"
#define AUTOTB_TVOUT_M_0_V  "../tv/cdatafile/c.prepareMessage.autotvout_M_0_V.dat"
#define AUTOTB_TVIN_M_0_V  "../tv/cdatafile/c.prepareMessage.autotvin_M_0_V.dat"
// wrapc file define: "M_1_V"
#define AUTOTB_TVOUT_M_1_V  "../tv/cdatafile/c.prepareMessage.autotvout_M_1_V.dat"
#define AUTOTB_TVIN_M_1_V  "../tv/cdatafile/c.prepareMessage.autotvin_M_1_V.dat"
// wrapc file define: "M_2_V"
#define AUTOTB_TVOUT_M_2_V  "../tv/cdatafile/c.prepareMessage.autotvout_M_2_V.dat"
#define AUTOTB_TVIN_M_2_V  "../tv/cdatafile/c.prepareMessage.autotvin_M_2_V.dat"
// wrapc file define: "M_3_V"
#define AUTOTB_TVOUT_M_3_V  "../tv/cdatafile/c.prepareMessage.autotvout_M_3_V.dat"
#define AUTOTB_TVIN_M_3_V  "../tv/cdatafile/c.prepareMessage.autotvin_M_3_V.dat"
// wrapc file define: "M_4_V"
#define AUTOTB_TVOUT_M_4_V  "../tv/cdatafile/c.prepareMessage.autotvout_M_4_V.dat"
#define AUTOTB_TVIN_M_4_V  "../tv/cdatafile/c.prepareMessage.autotvin_M_4_V.dat"
// wrapc file define: "M_5_V"
#define AUTOTB_TVOUT_M_5_V  "../tv/cdatafile/c.prepareMessage.autotvout_M_5_V.dat"
#define AUTOTB_TVIN_M_5_V  "../tv/cdatafile/c.prepareMessage.autotvin_M_5_V.dat"
// wrapc file define: "M_6_V"
#define AUTOTB_TVOUT_M_6_V  "../tv/cdatafile/c.prepareMessage.autotvout_M_6_V.dat"
#define AUTOTB_TVIN_M_6_V  "../tv/cdatafile/c.prepareMessage.autotvin_M_6_V.dat"
// wrapc file define: "M_7_V"
#define AUTOTB_TVOUT_M_7_V  "../tv/cdatafile/c.prepareMessage.autotvout_M_7_V.dat"
#define AUTOTB_TVIN_M_7_V  "../tv/cdatafile/c.prepareMessage.autotvin_M_7_V.dat"
// wrapc file define: "M_8_V"
#define AUTOTB_TVOUT_M_8_V  "../tv/cdatafile/c.prepareMessage.autotvout_M_8_V.dat"
#define AUTOTB_TVIN_M_8_V  "../tv/cdatafile/c.prepareMessage.autotvin_M_8_V.dat"
// wrapc file define: "M_9_V"
#define AUTOTB_TVOUT_M_9_V  "../tv/cdatafile/c.prepareMessage.autotvout_M_9_V.dat"
#define AUTOTB_TVIN_M_9_V  "../tv/cdatafile/c.prepareMessage.autotvin_M_9_V.dat"
// wrapc file define: "M_10_V"
#define AUTOTB_TVOUT_M_10_V  "../tv/cdatafile/c.prepareMessage.autotvout_M_10_V.dat"
#define AUTOTB_TVIN_M_10_V  "../tv/cdatafile/c.prepareMessage.autotvin_M_10_V.dat"
// wrapc file define: "M_11_V"
#define AUTOTB_TVOUT_M_11_V  "../tv/cdatafile/c.prepareMessage.autotvout_M_11_V.dat"
#define AUTOTB_TVIN_M_11_V  "../tv/cdatafile/c.prepareMessage.autotvin_M_11_V.dat"
// wrapc file define: "M_12_V"
#define AUTOTB_TVOUT_M_12_V  "../tv/cdatafile/c.prepareMessage.autotvout_M_12_V.dat"
#define AUTOTB_TVIN_M_12_V  "../tv/cdatafile/c.prepareMessage.autotvin_M_12_V.dat"
// wrapc file define: "M_13_V"
#define AUTOTB_TVOUT_M_13_V  "../tv/cdatafile/c.prepareMessage.autotvout_M_13_V.dat"
#define AUTOTB_TVIN_M_13_V  "../tv/cdatafile/c.prepareMessage.autotvin_M_13_V.dat"
// wrapc file define: "M_14_V"
#define AUTOTB_TVOUT_M_14_V  "../tv/cdatafile/c.prepareMessage.autotvout_M_14_V.dat"
#define AUTOTB_TVIN_M_14_V  "../tv/cdatafile/c.prepareMessage.autotvin_M_14_V.dat"
// wrapc file define: "M_15_V"
#define AUTOTB_TVOUT_M_15_V  "../tv/cdatafile/c.prepareMessage.autotvout_M_15_V.dat"
#define AUTOTB_TVIN_M_15_V  "../tv/cdatafile/c.prepareMessage.autotvin_M_15_V.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "M_0_V"
#define AUTOTB_TVOUT_PC_M_0_V  "../tv/rtldatafile/rtl.prepareMessage.autotvout_M_0_V.dat"
// tvout file define: "M_1_V"
#define AUTOTB_TVOUT_PC_M_1_V  "../tv/rtldatafile/rtl.prepareMessage.autotvout_M_1_V.dat"
// tvout file define: "M_2_V"
#define AUTOTB_TVOUT_PC_M_2_V  "../tv/rtldatafile/rtl.prepareMessage.autotvout_M_2_V.dat"
// tvout file define: "M_3_V"
#define AUTOTB_TVOUT_PC_M_3_V  "../tv/rtldatafile/rtl.prepareMessage.autotvout_M_3_V.dat"
// tvout file define: "M_4_V"
#define AUTOTB_TVOUT_PC_M_4_V  "../tv/rtldatafile/rtl.prepareMessage.autotvout_M_4_V.dat"
// tvout file define: "M_5_V"
#define AUTOTB_TVOUT_PC_M_5_V  "../tv/rtldatafile/rtl.prepareMessage.autotvout_M_5_V.dat"
// tvout file define: "M_6_V"
#define AUTOTB_TVOUT_PC_M_6_V  "../tv/rtldatafile/rtl.prepareMessage.autotvout_M_6_V.dat"
// tvout file define: "M_7_V"
#define AUTOTB_TVOUT_PC_M_7_V  "../tv/rtldatafile/rtl.prepareMessage.autotvout_M_7_V.dat"
// tvout file define: "M_8_V"
#define AUTOTB_TVOUT_PC_M_8_V  "../tv/rtldatafile/rtl.prepareMessage.autotvout_M_8_V.dat"
// tvout file define: "M_9_V"
#define AUTOTB_TVOUT_PC_M_9_V  "../tv/rtldatafile/rtl.prepareMessage.autotvout_M_9_V.dat"
// tvout file define: "M_10_V"
#define AUTOTB_TVOUT_PC_M_10_V  "../tv/rtldatafile/rtl.prepareMessage.autotvout_M_10_V.dat"
// tvout file define: "M_11_V"
#define AUTOTB_TVOUT_PC_M_11_V  "../tv/rtldatafile/rtl.prepareMessage.autotvout_M_11_V.dat"
// tvout file define: "M_12_V"
#define AUTOTB_TVOUT_PC_M_12_V  "../tv/rtldatafile/rtl.prepareMessage.autotvout_M_12_V.dat"
// tvout file define: "M_13_V"
#define AUTOTB_TVOUT_PC_M_13_V  "../tv/rtldatafile/rtl.prepareMessage.autotvout_M_13_V.dat"
// tvout file define: "M_14_V"
#define AUTOTB_TVOUT_PC_M_14_V  "../tv/rtldatafile/rtl.prepareMessage.autotvout_M_14_V.dat"
// tvout file define: "M_15_V"
#define AUTOTB_TVOUT_PC_M_15_V  "../tv/rtldatafile/rtl.prepareMessage.autotvout_M_15_V.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			input_V_depth = 0;
			bitlength_depth = 0;
			M_0_V_depth = 0;
			M_1_V_depth = 0;
			M_2_V_depth = 0;
			M_3_V_depth = 0;
			M_4_V_depth = 0;
			M_5_V_depth = 0;
			M_6_V_depth = 0;
			M_7_V_depth = 0;
			M_8_V_depth = 0;
			M_9_V_depth = 0;
			M_10_V_depth = 0;
			M_11_V_depth = 0;
			M_12_V_depth = 0;
			M_13_V_depth = 0;
			M_14_V_depth = 0;
			M_15_V_depth = 0;
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
			total_list << "{M_0_V " << M_0_V_depth << "}\n";
			total_list << "{M_1_V " << M_1_V_depth << "}\n";
			total_list << "{M_2_V " << M_2_V_depth << "}\n";
			total_list << "{M_3_V " << M_3_V_depth << "}\n";
			total_list << "{M_4_V " << M_4_V_depth << "}\n";
			total_list << "{M_5_V " << M_5_V_depth << "}\n";
			total_list << "{M_6_V " << M_6_V_depth << "}\n";
			total_list << "{M_7_V " << M_7_V_depth << "}\n";
			total_list << "{M_8_V " << M_8_V_depth << "}\n";
			total_list << "{M_9_V " << M_9_V_depth << "}\n";
			total_list << "{M_10_V " << M_10_V_depth << "}\n";
			total_list << "{M_11_V " << M_11_V_depth << "}\n";
			total_list << "{M_12_V " << M_12_V_depth << "}\n";
			total_list << "{M_13_V " << M_13_V_depth << "}\n";
			total_list << "{M_14_V " << M_14_V_depth << "}\n";
			total_list << "{M_15_V " << M_15_V_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int input_V_depth;
		int bitlength_depth;
		int M_0_V_depth;
		int M_1_V_depth;
		int M_2_V_depth;
		int M_3_V_depth;
		int M_4_V_depth;
		int M_5_V_depth;
		int M_6_V_depth;
		int M_7_V_depth;
		int M_8_V_depth;
		int M_9_V_depth;
		int M_10_V_depth;
		int M_11_V_depth;
		int M_12_V_depth;
		int M_13_V_depth;
		int M_14_V_depth;
		int M_15_V_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern void prepareMessage (
ap_uint<32> input[20],
int bitlength,
ap_uint<32> M[32][16]);

void AESL_WRAP_prepareMessage (
ap_uint<32> input[20],
int bitlength,
ap_uint<32> M[32][16])
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


		// output port post check: "M_0_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_M_0_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_M_0_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_M_0_V, AESL_token); // data

			sc_bv<32> *M_0_V_pc_buffer = new sc_bv<32>[32];
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'M_0_V', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'M_0_V', possible cause: There are uninitialized variables in the C design." << endl;
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
					M_0_V_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_M_0_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_M_0_V))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: M_0_V
				{
					// bitslice(31, 0)
					// {
						// celement: M.V(31, 0)
						// {
							sc_lv<32>* M_V_lv0_0_31_1_lv1_0_0_2 = new sc_lv<32>[32];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: M.V(31, 0)
						{
							// carray: (0) => (31) @ (1)
							for (int i_0 = 0; i_0 <= 31; i_0 += 1)
							{
								// carray: (0) => (0) @ (2)
								for (int i_1 = 0; i_1 <= 0; i_1 += 2)
								{
									if (&(M[0][0]) != NULL) // check the null address if the c port is array or others
									{
										M_V_lv0_0_31_1_lv1_0_0_2[hls_map_index].range(31, 0) = sc_bv<32>(M_0_V_pc_buffer[hls_map_index].range(31, 0));
										hls_map_index++;
									}
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: M.V(31, 0)
						{
							// carray: (0) => (31) @ (1)
							for (int i_0 = 0; i_0 <= 31; i_0 += 1)
							{
								// carray: (0) => (0) @ (2)
								for (int i_1 = 0; i_1 <= 0; i_1 += 2)
								{
									// sub                    : i_0 i_1
									// ori_name               : M[i_0][i_1]
									// sub_1st_elem           : 0 0
									// ori_name_1st_elem      : M[0][0]
									// output_left_conversion : M[i_0][i_1]
									// output_type_conversion : (M_V_lv0_0_31_1_lv1_0_0_2[hls_map_index]).to_string(SC_BIN).c_str()
									if (&(M[0][0]) != NULL) // check the null address if the c port is array or others
									{
										M[i_0][i_1] = (M_V_lv0_0_31_1_lv1_0_0_2[hls_map_index]).to_string(SC_BIN).c_str();
										hls_map_index++;
									}
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] M_0_V_pc_buffer;
		}

		// output port post check: "M_1_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_M_1_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_M_1_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_M_1_V, AESL_token); // data

			sc_bv<32> *M_1_V_pc_buffer = new sc_bv<32>[32];
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'M_1_V', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'M_1_V', possible cause: There are uninitialized variables in the C design." << endl;
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
					M_1_V_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_M_1_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_M_1_V))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: M_1_V
				{
					// bitslice(31, 0)
					// {
						// celement: M.V(31, 0)
						// {
							sc_lv<32>* M_V_lv0_0_31_1_lv1_1_1_2 = new sc_lv<32>[32];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: M.V(31, 0)
						{
							// carray: (0) => (31) @ (1)
							for (int i_0 = 0; i_0 <= 31; i_0 += 1)
							{
								// carray: (1) => (1) @ (2)
								for (int i_1 = 1; i_1 <= 1; i_1 += 2)
								{
									if (&(M[0][0]) != NULL) // check the null address if the c port is array or others
									{
										M_V_lv0_0_31_1_lv1_1_1_2[hls_map_index].range(31, 0) = sc_bv<32>(M_1_V_pc_buffer[hls_map_index].range(31, 0));
										hls_map_index++;
									}
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: M.V(31, 0)
						{
							// carray: (0) => (31) @ (1)
							for (int i_0 = 0; i_0 <= 31; i_0 += 1)
							{
								// carray: (1) => (1) @ (2)
								for (int i_1 = 1; i_1 <= 1; i_1 += 2)
								{
									// sub                    : i_0 i_1
									// ori_name               : M[i_0][i_1]
									// sub_1st_elem           : 0 0
									// ori_name_1st_elem      : M[0][0]
									// output_left_conversion : M[i_0][i_1]
									// output_type_conversion : (M_V_lv0_0_31_1_lv1_1_1_2[hls_map_index]).to_string(SC_BIN).c_str()
									if (&(M[0][0]) != NULL) // check the null address if the c port is array or others
									{
										M[i_0][i_1] = (M_V_lv0_0_31_1_lv1_1_1_2[hls_map_index]).to_string(SC_BIN).c_str();
										hls_map_index++;
									}
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] M_1_V_pc_buffer;
		}

		// output port post check: "M_2_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_M_2_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_M_2_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_M_2_V, AESL_token); // data

			sc_bv<32> *M_2_V_pc_buffer = new sc_bv<32>[32];
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'M_2_V', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'M_2_V', possible cause: There are uninitialized variables in the C design." << endl;
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
					M_2_V_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_M_2_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_M_2_V))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: M_2_V
				{
					// bitslice(31, 0)
					// {
						// celement: M.V(31, 0)
						// {
							sc_lv<32>* M_V_lv0_0_31_1_lv1_2_2_2 = new sc_lv<32>[32];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: M.V(31, 0)
						{
							// carray: (0) => (31) @ (1)
							for (int i_0 = 0; i_0 <= 31; i_0 += 1)
							{
								// carray: (2) => (2) @ (2)
								for (int i_1 = 2; i_1 <= 2; i_1 += 2)
								{
									if (&(M[0][0]) != NULL) // check the null address if the c port is array or others
									{
										M_V_lv0_0_31_1_lv1_2_2_2[hls_map_index].range(31, 0) = sc_bv<32>(M_2_V_pc_buffer[hls_map_index].range(31, 0));
										hls_map_index++;
									}
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: M.V(31, 0)
						{
							// carray: (0) => (31) @ (1)
							for (int i_0 = 0; i_0 <= 31; i_0 += 1)
							{
								// carray: (2) => (2) @ (2)
								for (int i_1 = 2; i_1 <= 2; i_1 += 2)
								{
									// sub                    : i_0 i_1
									// ori_name               : M[i_0][i_1]
									// sub_1st_elem           : 0 0
									// ori_name_1st_elem      : M[0][0]
									// output_left_conversion : M[i_0][i_1]
									// output_type_conversion : (M_V_lv0_0_31_1_lv1_2_2_2[hls_map_index]).to_string(SC_BIN).c_str()
									if (&(M[0][0]) != NULL) // check the null address if the c port is array or others
									{
										M[i_0][i_1] = (M_V_lv0_0_31_1_lv1_2_2_2[hls_map_index]).to_string(SC_BIN).c_str();
										hls_map_index++;
									}
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] M_2_V_pc_buffer;
		}

		// output port post check: "M_3_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_M_3_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_M_3_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_M_3_V, AESL_token); // data

			sc_bv<32> *M_3_V_pc_buffer = new sc_bv<32>[32];
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'M_3_V', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'M_3_V', possible cause: There are uninitialized variables in the C design." << endl;
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
					M_3_V_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_M_3_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_M_3_V))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: M_3_V
				{
					// bitslice(31, 0)
					// {
						// celement: M.V(31, 0)
						// {
							sc_lv<32>* M_V_lv0_0_31_1_lv1_3_3_2 = new sc_lv<32>[32];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: M.V(31, 0)
						{
							// carray: (0) => (31) @ (1)
							for (int i_0 = 0; i_0 <= 31; i_0 += 1)
							{
								// carray: (3) => (3) @ (2)
								for (int i_1 = 3; i_1 <= 3; i_1 += 2)
								{
									if (&(M[0][0]) != NULL) // check the null address if the c port is array or others
									{
										M_V_lv0_0_31_1_lv1_3_3_2[hls_map_index].range(31, 0) = sc_bv<32>(M_3_V_pc_buffer[hls_map_index].range(31, 0));
										hls_map_index++;
									}
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: M.V(31, 0)
						{
							// carray: (0) => (31) @ (1)
							for (int i_0 = 0; i_0 <= 31; i_0 += 1)
							{
								// carray: (3) => (3) @ (2)
								for (int i_1 = 3; i_1 <= 3; i_1 += 2)
								{
									// sub                    : i_0 i_1
									// ori_name               : M[i_0][i_1]
									// sub_1st_elem           : 0 0
									// ori_name_1st_elem      : M[0][0]
									// output_left_conversion : M[i_0][i_1]
									// output_type_conversion : (M_V_lv0_0_31_1_lv1_3_3_2[hls_map_index]).to_string(SC_BIN).c_str()
									if (&(M[0][0]) != NULL) // check the null address if the c port is array or others
									{
										M[i_0][i_1] = (M_V_lv0_0_31_1_lv1_3_3_2[hls_map_index]).to_string(SC_BIN).c_str();
										hls_map_index++;
									}
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] M_3_V_pc_buffer;
		}

		// output port post check: "M_4_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_M_4_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_M_4_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_M_4_V, AESL_token); // data

			sc_bv<32> *M_4_V_pc_buffer = new sc_bv<32>[32];
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'M_4_V', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'M_4_V', possible cause: There are uninitialized variables in the C design." << endl;
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
					M_4_V_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_M_4_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_M_4_V))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: M_4_V
				{
					// bitslice(31, 0)
					// {
						// celement: M.V(31, 0)
						// {
							sc_lv<32>* M_V_lv0_0_31_1_lv1_4_4_2 = new sc_lv<32>[32];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: M.V(31, 0)
						{
							// carray: (0) => (31) @ (1)
							for (int i_0 = 0; i_0 <= 31; i_0 += 1)
							{
								// carray: (4) => (4) @ (2)
								for (int i_1 = 4; i_1 <= 4; i_1 += 2)
								{
									if (&(M[0][0]) != NULL) // check the null address if the c port is array or others
									{
										M_V_lv0_0_31_1_lv1_4_4_2[hls_map_index].range(31, 0) = sc_bv<32>(M_4_V_pc_buffer[hls_map_index].range(31, 0));
										hls_map_index++;
									}
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: M.V(31, 0)
						{
							// carray: (0) => (31) @ (1)
							for (int i_0 = 0; i_0 <= 31; i_0 += 1)
							{
								// carray: (4) => (4) @ (2)
								for (int i_1 = 4; i_1 <= 4; i_1 += 2)
								{
									// sub                    : i_0 i_1
									// ori_name               : M[i_0][i_1]
									// sub_1st_elem           : 0 0
									// ori_name_1st_elem      : M[0][0]
									// output_left_conversion : M[i_0][i_1]
									// output_type_conversion : (M_V_lv0_0_31_1_lv1_4_4_2[hls_map_index]).to_string(SC_BIN).c_str()
									if (&(M[0][0]) != NULL) // check the null address if the c port is array or others
									{
										M[i_0][i_1] = (M_V_lv0_0_31_1_lv1_4_4_2[hls_map_index]).to_string(SC_BIN).c_str();
										hls_map_index++;
									}
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] M_4_V_pc_buffer;
		}

		// output port post check: "M_5_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_M_5_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_M_5_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_M_5_V, AESL_token); // data

			sc_bv<32> *M_5_V_pc_buffer = new sc_bv<32>[32];
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'M_5_V', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'M_5_V', possible cause: There are uninitialized variables in the C design." << endl;
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
					M_5_V_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_M_5_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_M_5_V))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: M_5_V
				{
					// bitslice(31, 0)
					// {
						// celement: M.V(31, 0)
						// {
							sc_lv<32>* M_V_lv0_0_31_1_lv1_5_5_2 = new sc_lv<32>[32];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: M.V(31, 0)
						{
							// carray: (0) => (31) @ (1)
							for (int i_0 = 0; i_0 <= 31; i_0 += 1)
							{
								// carray: (5) => (5) @ (2)
								for (int i_1 = 5; i_1 <= 5; i_1 += 2)
								{
									if (&(M[0][0]) != NULL) // check the null address if the c port is array or others
									{
										M_V_lv0_0_31_1_lv1_5_5_2[hls_map_index].range(31, 0) = sc_bv<32>(M_5_V_pc_buffer[hls_map_index].range(31, 0));
										hls_map_index++;
									}
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: M.V(31, 0)
						{
							// carray: (0) => (31) @ (1)
							for (int i_0 = 0; i_0 <= 31; i_0 += 1)
							{
								// carray: (5) => (5) @ (2)
								for (int i_1 = 5; i_1 <= 5; i_1 += 2)
								{
									// sub                    : i_0 i_1
									// ori_name               : M[i_0][i_1]
									// sub_1st_elem           : 0 0
									// ori_name_1st_elem      : M[0][0]
									// output_left_conversion : M[i_0][i_1]
									// output_type_conversion : (M_V_lv0_0_31_1_lv1_5_5_2[hls_map_index]).to_string(SC_BIN).c_str()
									if (&(M[0][0]) != NULL) // check the null address if the c port is array or others
									{
										M[i_0][i_1] = (M_V_lv0_0_31_1_lv1_5_5_2[hls_map_index]).to_string(SC_BIN).c_str();
										hls_map_index++;
									}
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] M_5_V_pc_buffer;
		}

		// output port post check: "M_6_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_M_6_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_M_6_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_M_6_V, AESL_token); // data

			sc_bv<32> *M_6_V_pc_buffer = new sc_bv<32>[32];
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'M_6_V', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'M_6_V', possible cause: There are uninitialized variables in the C design." << endl;
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
					M_6_V_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_M_6_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_M_6_V))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: M_6_V
				{
					// bitslice(31, 0)
					// {
						// celement: M.V(31, 0)
						// {
							sc_lv<32>* M_V_lv0_0_31_1_lv1_6_6_2 = new sc_lv<32>[32];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: M.V(31, 0)
						{
							// carray: (0) => (31) @ (1)
							for (int i_0 = 0; i_0 <= 31; i_0 += 1)
							{
								// carray: (6) => (6) @ (2)
								for (int i_1 = 6; i_1 <= 6; i_1 += 2)
								{
									if (&(M[0][0]) != NULL) // check the null address if the c port is array or others
									{
										M_V_lv0_0_31_1_lv1_6_6_2[hls_map_index].range(31, 0) = sc_bv<32>(M_6_V_pc_buffer[hls_map_index].range(31, 0));
										hls_map_index++;
									}
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: M.V(31, 0)
						{
							// carray: (0) => (31) @ (1)
							for (int i_0 = 0; i_0 <= 31; i_0 += 1)
							{
								// carray: (6) => (6) @ (2)
								for (int i_1 = 6; i_1 <= 6; i_1 += 2)
								{
									// sub                    : i_0 i_1
									// ori_name               : M[i_0][i_1]
									// sub_1st_elem           : 0 0
									// ori_name_1st_elem      : M[0][0]
									// output_left_conversion : M[i_0][i_1]
									// output_type_conversion : (M_V_lv0_0_31_1_lv1_6_6_2[hls_map_index]).to_string(SC_BIN).c_str()
									if (&(M[0][0]) != NULL) // check the null address if the c port is array or others
									{
										M[i_0][i_1] = (M_V_lv0_0_31_1_lv1_6_6_2[hls_map_index]).to_string(SC_BIN).c_str();
										hls_map_index++;
									}
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] M_6_V_pc_buffer;
		}

		// output port post check: "M_7_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_M_7_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_M_7_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_M_7_V, AESL_token); // data

			sc_bv<32> *M_7_V_pc_buffer = new sc_bv<32>[32];
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'M_7_V', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'M_7_V', possible cause: There are uninitialized variables in the C design." << endl;
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
					M_7_V_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_M_7_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_M_7_V))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: M_7_V
				{
					// bitslice(31, 0)
					// {
						// celement: M.V(31, 0)
						// {
							sc_lv<32>* M_V_lv0_0_31_1_lv1_7_7_2 = new sc_lv<32>[32];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: M.V(31, 0)
						{
							// carray: (0) => (31) @ (1)
							for (int i_0 = 0; i_0 <= 31; i_0 += 1)
							{
								// carray: (7) => (7) @ (2)
								for (int i_1 = 7; i_1 <= 7; i_1 += 2)
								{
									if (&(M[0][0]) != NULL) // check the null address if the c port is array or others
									{
										M_V_lv0_0_31_1_lv1_7_7_2[hls_map_index].range(31, 0) = sc_bv<32>(M_7_V_pc_buffer[hls_map_index].range(31, 0));
										hls_map_index++;
									}
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: M.V(31, 0)
						{
							// carray: (0) => (31) @ (1)
							for (int i_0 = 0; i_0 <= 31; i_0 += 1)
							{
								// carray: (7) => (7) @ (2)
								for (int i_1 = 7; i_1 <= 7; i_1 += 2)
								{
									// sub                    : i_0 i_1
									// ori_name               : M[i_0][i_1]
									// sub_1st_elem           : 0 0
									// ori_name_1st_elem      : M[0][0]
									// output_left_conversion : M[i_0][i_1]
									// output_type_conversion : (M_V_lv0_0_31_1_lv1_7_7_2[hls_map_index]).to_string(SC_BIN).c_str()
									if (&(M[0][0]) != NULL) // check the null address if the c port is array or others
									{
										M[i_0][i_1] = (M_V_lv0_0_31_1_lv1_7_7_2[hls_map_index]).to_string(SC_BIN).c_str();
										hls_map_index++;
									}
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] M_7_V_pc_buffer;
		}

		// output port post check: "M_8_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_M_8_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_M_8_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_M_8_V, AESL_token); // data

			sc_bv<32> *M_8_V_pc_buffer = new sc_bv<32>[32];
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'M_8_V', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'M_8_V', possible cause: There are uninitialized variables in the C design." << endl;
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
					M_8_V_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_M_8_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_M_8_V))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: M_8_V
				{
					// bitslice(31, 0)
					// {
						// celement: M.V(31, 0)
						// {
							sc_lv<32>* M_V_lv0_0_31_1_lv1_8_8_2 = new sc_lv<32>[32];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: M.V(31, 0)
						{
							// carray: (0) => (31) @ (1)
							for (int i_0 = 0; i_0 <= 31; i_0 += 1)
							{
								// carray: (8) => (8) @ (2)
								for (int i_1 = 8; i_1 <= 8; i_1 += 2)
								{
									if (&(M[0][0]) != NULL) // check the null address if the c port is array or others
									{
										M_V_lv0_0_31_1_lv1_8_8_2[hls_map_index].range(31, 0) = sc_bv<32>(M_8_V_pc_buffer[hls_map_index].range(31, 0));
										hls_map_index++;
									}
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: M.V(31, 0)
						{
							// carray: (0) => (31) @ (1)
							for (int i_0 = 0; i_0 <= 31; i_0 += 1)
							{
								// carray: (8) => (8) @ (2)
								for (int i_1 = 8; i_1 <= 8; i_1 += 2)
								{
									// sub                    : i_0 i_1
									// ori_name               : M[i_0][i_1]
									// sub_1st_elem           : 0 0
									// ori_name_1st_elem      : M[0][0]
									// output_left_conversion : M[i_0][i_1]
									// output_type_conversion : (M_V_lv0_0_31_1_lv1_8_8_2[hls_map_index]).to_string(SC_BIN).c_str()
									if (&(M[0][0]) != NULL) // check the null address if the c port is array or others
									{
										M[i_0][i_1] = (M_V_lv0_0_31_1_lv1_8_8_2[hls_map_index]).to_string(SC_BIN).c_str();
										hls_map_index++;
									}
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] M_8_V_pc_buffer;
		}

		// output port post check: "M_9_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_M_9_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_M_9_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_M_9_V, AESL_token); // data

			sc_bv<32> *M_9_V_pc_buffer = new sc_bv<32>[32];
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'M_9_V', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'M_9_V', possible cause: There are uninitialized variables in the C design." << endl;
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
					M_9_V_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_M_9_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_M_9_V))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: M_9_V
				{
					// bitslice(31, 0)
					// {
						// celement: M.V(31, 0)
						// {
							sc_lv<32>* M_V_lv0_0_31_1_lv1_9_9_2 = new sc_lv<32>[32];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: M.V(31, 0)
						{
							// carray: (0) => (31) @ (1)
							for (int i_0 = 0; i_0 <= 31; i_0 += 1)
							{
								// carray: (9) => (9) @ (2)
								for (int i_1 = 9; i_1 <= 9; i_1 += 2)
								{
									if (&(M[0][0]) != NULL) // check the null address if the c port is array or others
									{
										M_V_lv0_0_31_1_lv1_9_9_2[hls_map_index].range(31, 0) = sc_bv<32>(M_9_V_pc_buffer[hls_map_index].range(31, 0));
										hls_map_index++;
									}
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: M.V(31, 0)
						{
							// carray: (0) => (31) @ (1)
							for (int i_0 = 0; i_0 <= 31; i_0 += 1)
							{
								// carray: (9) => (9) @ (2)
								for (int i_1 = 9; i_1 <= 9; i_1 += 2)
								{
									// sub                    : i_0 i_1
									// ori_name               : M[i_0][i_1]
									// sub_1st_elem           : 0 0
									// ori_name_1st_elem      : M[0][0]
									// output_left_conversion : M[i_0][i_1]
									// output_type_conversion : (M_V_lv0_0_31_1_lv1_9_9_2[hls_map_index]).to_string(SC_BIN).c_str()
									if (&(M[0][0]) != NULL) // check the null address if the c port is array or others
									{
										M[i_0][i_1] = (M_V_lv0_0_31_1_lv1_9_9_2[hls_map_index]).to_string(SC_BIN).c_str();
										hls_map_index++;
									}
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] M_9_V_pc_buffer;
		}

		// output port post check: "M_10_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_M_10_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_M_10_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_M_10_V, AESL_token); // data

			sc_bv<32> *M_10_V_pc_buffer = new sc_bv<32>[32];
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'M_10_V', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'M_10_V', possible cause: There are uninitialized variables in the C design." << endl;
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
					M_10_V_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_M_10_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_M_10_V))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: M_10_V
				{
					// bitslice(31, 0)
					// {
						// celement: M.V(31, 0)
						// {
							sc_lv<32>* M_V_lv0_0_31_1_lv1_10_10_2 = new sc_lv<32>[32];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: M.V(31, 0)
						{
							// carray: (0) => (31) @ (1)
							for (int i_0 = 0; i_0 <= 31; i_0 += 1)
							{
								// carray: (10) => (10) @ (2)
								for (int i_1 = 10; i_1 <= 10; i_1 += 2)
								{
									if (&(M[0][0]) != NULL) // check the null address if the c port is array or others
									{
										M_V_lv0_0_31_1_lv1_10_10_2[hls_map_index].range(31, 0) = sc_bv<32>(M_10_V_pc_buffer[hls_map_index].range(31, 0));
										hls_map_index++;
									}
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: M.V(31, 0)
						{
							// carray: (0) => (31) @ (1)
							for (int i_0 = 0; i_0 <= 31; i_0 += 1)
							{
								// carray: (10) => (10) @ (2)
								for (int i_1 = 10; i_1 <= 10; i_1 += 2)
								{
									// sub                    : i_0 i_1
									// ori_name               : M[i_0][i_1]
									// sub_1st_elem           : 0 0
									// ori_name_1st_elem      : M[0][0]
									// output_left_conversion : M[i_0][i_1]
									// output_type_conversion : (M_V_lv0_0_31_1_lv1_10_10_2[hls_map_index]).to_string(SC_BIN).c_str()
									if (&(M[0][0]) != NULL) // check the null address if the c port is array or others
									{
										M[i_0][i_1] = (M_V_lv0_0_31_1_lv1_10_10_2[hls_map_index]).to_string(SC_BIN).c_str();
										hls_map_index++;
									}
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] M_10_V_pc_buffer;
		}

		// output port post check: "M_11_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_M_11_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_M_11_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_M_11_V, AESL_token); // data

			sc_bv<32> *M_11_V_pc_buffer = new sc_bv<32>[32];
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'M_11_V', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'M_11_V', possible cause: There are uninitialized variables in the C design." << endl;
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
					M_11_V_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_M_11_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_M_11_V))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: M_11_V
				{
					// bitslice(31, 0)
					// {
						// celement: M.V(31, 0)
						// {
							sc_lv<32>* M_V_lv0_0_31_1_lv1_11_11_2 = new sc_lv<32>[32];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: M.V(31, 0)
						{
							// carray: (0) => (31) @ (1)
							for (int i_0 = 0; i_0 <= 31; i_0 += 1)
							{
								// carray: (11) => (11) @ (2)
								for (int i_1 = 11; i_1 <= 11; i_1 += 2)
								{
									if (&(M[0][0]) != NULL) // check the null address if the c port is array or others
									{
										M_V_lv0_0_31_1_lv1_11_11_2[hls_map_index].range(31, 0) = sc_bv<32>(M_11_V_pc_buffer[hls_map_index].range(31, 0));
										hls_map_index++;
									}
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: M.V(31, 0)
						{
							// carray: (0) => (31) @ (1)
							for (int i_0 = 0; i_0 <= 31; i_0 += 1)
							{
								// carray: (11) => (11) @ (2)
								for (int i_1 = 11; i_1 <= 11; i_1 += 2)
								{
									// sub                    : i_0 i_1
									// ori_name               : M[i_0][i_1]
									// sub_1st_elem           : 0 0
									// ori_name_1st_elem      : M[0][0]
									// output_left_conversion : M[i_0][i_1]
									// output_type_conversion : (M_V_lv0_0_31_1_lv1_11_11_2[hls_map_index]).to_string(SC_BIN).c_str()
									if (&(M[0][0]) != NULL) // check the null address if the c port is array or others
									{
										M[i_0][i_1] = (M_V_lv0_0_31_1_lv1_11_11_2[hls_map_index]).to_string(SC_BIN).c_str();
										hls_map_index++;
									}
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] M_11_V_pc_buffer;
		}

		// output port post check: "M_12_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_M_12_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_M_12_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_M_12_V, AESL_token); // data

			sc_bv<32> *M_12_V_pc_buffer = new sc_bv<32>[32];
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'M_12_V', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'M_12_V', possible cause: There are uninitialized variables in the C design." << endl;
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
					M_12_V_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_M_12_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_M_12_V))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: M_12_V
				{
					// bitslice(31, 0)
					// {
						// celement: M.V(31, 0)
						// {
							sc_lv<32>* M_V_lv0_0_31_1_lv1_12_12_2 = new sc_lv<32>[32];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: M.V(31, 0)
						{
							// carray: (0) => (31) @ (1)
							for (int i_0 = 0; i_0 <= 31; i_0 += 1)
							{
								// carray: (12) => (12) @ (2)
								for (int i_1 = 12; i_1 <= 12; i_1 += 2)
								{
									if (&(M[0][0]) != NULL) // check the null address if the c port is array or others
									{
										M_V_lv0_0_31_1_lv1_12_12_2[hls_map_index].range(31, 0) = sc_bv<32>(M_12_V_pc_buffer[hls_map_index].range(31, 0));
										hls_map_index++;
									}
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: M.V(31, 0)
						{
							// carray: (0) => (31) @ (1)
							for (int i_0 = 0; i_0 <= 31; i_0 += 1)
							{
								// carray: (12) => (12) @ (2)
								for (int i_1 = 12; i_1 <= 12; i_1 += 2)
								{
									// sub                    : i_0 i_1
									// ori_name               : M[i_0][i_1]
									// sub_1st_elem           : 0 0
									// ori_name_1st_elem      : M[0][0]
									// output_left_conversion : M[i_0][i_1]
									// output_type_conversion : (M_V_lv0_0_31_1_lv1_12_12_2[hls_map_index]).to_string(SC_BIN).c_str()
									if (&(M[0][0]) != NULL) // check the null address if the c port is array or others
									{
										M[i_0][i_1] = (M_V_lv0_0_31_1_lv1_12_12_2[hls_map_index]).to_string(SC_BIN).c_str();
										hls_map_index++;
									}
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] M_12_V_pc_buffer;
		}

		// output port post check: "M_13_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_M_13_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_M_13_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_M_13_V, AESL_token); // data

			sc_bv<32> *M_13_V_pc_buffer = new sc_bv<32>[32];
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'M_13_V', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'M_13_V', possible cause: There are uninitialized variables in the C design." << endl;
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
					M_13_V_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_M_13_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_M_13_V))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: M_13_V
				{
					// bitslice(31, 0)
					// {
						// celement: M.V(31, 0)
						// {
							sc_lv<32>* M_V_lv0_0_31_1_lv1_13_13_2 = new sc_lv<32>[32];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: M.V(31, 0)
						{
							// carray: (0) => (31) @ (1)
							for (int i_0 = 0; i_0 <= 31; i_0 += 1)
							{
								// carray: (13) => (13) @ (2)
								for (int i_1 = 13; i_1 <= 13; i_1 += 2)
								{
									if (&(M[0][0]) != NULL) // check the null address if the c port is array or others
									{
										M_V_lv0_0_31_1_lv1_13_13_2[hls_map_index].range(31, 0) = sc_bv<32>(M_13_V_pc_buffer[hls_map_index].range(31, 0));
										hls_map_index++;
									}
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: M.V(31, 0)
						{
							// carray: (0) => (31) @ (1)
							for (int i_0 = 0; i_0 <= 31; i_0 += 1)
							{
								// carray: (13) => (13) @ (2)
								for (int i_1 = 13; i_1 <= 13; i_1 += 2)
								{
									// sub                    : i_0 i_1
									// ori_name               : M[i_0][i_1]
									// sub_1st_elem           : 0 0
									// ori_name_1st_elem      : M[0][0]
									// output_left_conversion : M[i_0][i_1]
									// output_type_conversion : (M_V_lv0_0_31_1_lv1_13_13_2[hls_map_index]).to_string(SC_BIN).c_str()
									if (&(M[0][0]) != NULL) // check the null address if the c port is array or others
									{
										M[i_0][i_1] = (M_V_lv0_0_31_1_lv1_13_13_2[hls_map_index]).to_string(SC_BIN).c_str();
										hls_map_index++;
									}
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] M_13_V_pc_buffer;
		}

		// output port post check: "M_14_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_M_14_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_M_14_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_M_14_V, AESL_token); // data

			sc_bv<32> *M_14_V_pc_buffer = new sc_bv<32>[32];
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'M_14_V', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'M_14_V', possible cause: There are uninitialized variables in the C design." << endl;
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
					M_14_V_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_M_14_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_M_14_V))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: M_14_V
				{
					// bitslice(31, 0)
					// {
						// celement: M.V(31, 0)
						// {
							sc_lv<32>* M_V_lv0_0_31_1_lv1_14_14_2 = new sc_lv<32>[32];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: M.V(31, 0)
						{
							// carray: (0) => (31) @ (1)
							for (int i_0 = 0; i_0 <= 31; i_0 += 1)
							{
								// carray: (14) => (14) @ (2)
								for (int i_1 = 14; i_1 <= 14; i_1 += 2)
								{
									if (&(M[0][0]) != NULL) // check the null address if the c port is array or others
									{
										M_V_lv0_0_31_1_lv1_14_14_2[hls_map_index].range(31, 0) = sc_bv<32>(M_14_V_pc_buffer[hls_map_index].range(31, 0));
										hls_map_index++;
									}
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: M.V(31, 0)
						{
							// carray: (0) => (31) @ (1)
							for (int i_0 = 0; i_0 <= 31; i_0 += 1)
							{
								// carray: (14) => (14) @ (2)
								for (int i_1 = 14; i_1 <= 14; i_1 += 2)
								{
									// sub                    : i_0 i_1
									// ori_name               : M[i_0][i_1]
									// sub_1st_elem           : 0 0
									// ori_name_1st_elem      : M[0][0]
									// output_left_conversion : M[i_0][i_1]
									// output_type_conversion : (M_V_lv0_0_31_1_lv1_14_14_2[hls_map_index]).to_string(SC_BIN).c_str()
									if (&(M[0][0]) != NULL) // check the null address if the c port is array or others
									{
										M[i_0][i_1] = (M_V_lv0_0_31_1_lv1_14_14_2[hls_map_index]).to_string(SC_BIN).c_str();
										hls_map_index++;
									}
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] M_14_V_pc_buffer;
		}

		// output port post check: "M_15_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_M_15_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_M_15_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_M_15_V, AESL_token); // data

			sc_bv<32> *M_15_V_pc_buffer = new sc_bv<32>[32];
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'M_15_V', possible cause: There are uninitialized variables in the C design." << endl;
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
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'M_15_V', possible cause: There are uninitialized variables in the C design." << endl;
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
					M_15_V_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_M_15_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_M_15_V))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: M_15_V
				{
					// bitslice(31, 0)
					// {
						// celement: M.V(31, 0)
						// {
							sc_lv<32>* M_V_lv0_0_31_1_lv1_15_15_2 = new sc_lv<32>[32];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: M.V(31, 0)
						{
							// carray: (0) => (31) @ (1)
							for (int i_0 = 0; i_0 <= 31; i_0 += 1)
							{
								// carray: (15) => (15) @ (2)
								for (int i_1 = 15; i_1 <= 15; i_1 += 2)
								{
									if (&(M[0][0]) != NULL) // check the null address if the c port is array or others
									{
										M_V_lv0_0_31_1_lv1_15_15_2[hls_map_index].range(31, 0) = sc_bv<32>(M_15_V_pc_buffer[hls_map_index].range(31, 0));
										hls_map_index++;
									}
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: M.V(31, 0)
						{
							// carray: (0) => (31) @ (1)
							for (int i_0 = 0; i_0 <= 31; i_0 += 1)
							{
								// carray: (15) => (15) @ (2)
								for (int i_1 = 15; i_1 <= 15; i_1 += 2)
								{
									// sub                    : i_0 i_1
									// ori_name               : M[i_0][i_1]
									// sub_1st_elem           : 0 0
									// ori_name_1st_elem      : M[0][0]
									// output_left_conversion : M[i_0][i_1]
									// output_type_conversion : (M_V_lv0_0_31_1_lv1_15_15_2[hls_map_index]).to_string(SC_BIN).c_str()
									if (&(M[0][0]) != NULL) // check the null address if the c port is array or others
									{
										M[i_0][i_1] = (M_V_lv0_0_31_1_lv1_15_15_2[hls_map_index]).to_string(SC_BIN).c_str();
										hls_map_index++;
									}
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] M_15_V_pc_buffer;
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

		// "M_0_V"
		char* tvin_M_0_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_M_0_V);
		char* tvout_M_0_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_M_0_V);

		// "M_1_V"
		char* tvin_M_1_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_M_1_V);
		char* tvout_M_1_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_M_1_V);

		// "M_2_V"
		char* tvin_M_2_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_M_2_V);
		char* tvout_M_2_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_M_2_V);

		// "M_3_V"
		char* tvin_M_3_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_M_3_V);
		char* tvout_M_3_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_M_3_V);

		// "M_4_V"
		char* tvin_M_4_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_M_4_V);
		char* tvout_M_4_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_M_4_V);

		// "M_5_V"
		char* tvin_M_5_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_M_5_V);
		char* tvout_M_5_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_M_5_V);

		// "M_6_V"
		char* tvin_M_6_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_M_6_V);
		char* tvout_M_6_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_M_6_V);

		// "M_7_V"
		char* tvin_M_7_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_M_7_V);
		char* tvout_M_7_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_M_7_V);

		// "M_8_V"
		char* tvin_M_8_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_M_8_V);
		char* tvout_M_8_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_M_8_V);

		// "M_9_V"
		char* tvin_M_9_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_M_9_V);
		char* tvout_M_9_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_M_9_V);

		// "M_10_V"
		char* tvin_M_10_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_M_10_V);
		char* tvout_M_10_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_M_10_V);

		// "M_11_V"
		char* tvin_M_11_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_M_11_V);
		char* tvout_M_11_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_M_11_V);

		// "M_12_V"
		char* tvin_M_12_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_M_12_V);
		char* tvout_M_12_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_M_12_V);

		// "M_13_V"
		char* tvin_M_13_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_M_13_V);
		char* tvout_M_13_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_M_13_V);

		// "M_14_V"
		char* tvin_M_14_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_M_14_V);
		char* tvout_M_14_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_M_14_V);

		// "M_15_V"
		char* tvin_M_15_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_M_15_V);
		char* tvout_M_15_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_M_15_V);

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
		sprintf(tvin_M_0_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_M_0_V, tvin_M_0_V);

		sc_bv<32>* M_0_V_tvin_wrapc_buffer = new sc_bv<32>[32];

		// RTL Name: M_0_V
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: M.V(31, 0)
				{
					// carray: (0) => (31) @ (1)
					for (int i_0 = 0; i_0 <= 31; i_0 += 1)
					{
						// carray: (0) => (0) @ (2)
						for (int i_1 = 0; i_1 <= 0; i_1 += 2)
						{
							// sub                   : i_0 i_1
							// ori_name              : M[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : M[0][0]
							// regulate_c_name       : M_V
							// input_type_conversion : (M[i_0][i_1]).to_string(2).c_str()
							if (&(M[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> M_V_tmp_mem;
								M_V_tmp_mem = (M[i_0][i_1]).to_string(2).c_str();
								M_0_V_tvin_wrapc_buffer[hls_map_index].range(31, 0) = M_V_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 32; i++)
		{
			sprintf(tvin_M_0_V, "%s\n", (M_0_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_M_0_V, tvin_M_0_V);
		}

		tcl_file.set_num(32, &tcl_file.M_0_V_depth);
		sprintf(tvin_M_0_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_M_0_V, tvin_M_0_V);

		// release memory allocation
		delete [] M_0_V_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_M_1_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_M_1_V, tvin_M_1_V);

		sc_bv<32>* M_1_V_tvin_wrapc_buffer = new sc_bv<32>[32];

		// RTL Name: M_1_V
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: M.V(31, 0)
				{
					// carray: (0) => (31) @ (1)
					for (int i_0 = 0; i_0 <= 31; i_0 += 1)
					{
						// carray: (1) => (1) @ (2)
						for (int i_1 = 1; i_1 <= 1; i_1 += 2)
						{
							// sub                   : i_0 i_1
							// ori_name              : M[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : M[0][0]
							// regulate_c_name       : M_V
							// input_type_conversion : (M[i_0][i_1]).to_string(2).c_str()
							if (&(M[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> M_V_tmp_mem;
								M_V_tmp_mem = (M[i_0][i_1]).to_string(2).c_str();
								M_1_V_tvin_wrapc_buffer[hls_map_index].range(31, 0) = M_V_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 32; i++)
		{
			sprintf(tvin_M_1_V, "%s\n", (M_1_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_M_1_V, tvin_M_1_V);
		}

		tcl_file.set_num(32, &tcl_file.M_1_V_depth);
		sprintf(tvin_M_1_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_M_1_V, tvin_M_1_V);

		// release memory allocation
		delete [] M_1_V_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_M_2_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_M_2_V, tvin_M_2_V);

		sc_bv<32>* M_2_V_tvin_wrapc_buffer = new sc_bv<32>[32];

		// RTL Name: M_2_V
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: M.V(31, 0)
				{
					// carray: (0) => (31) @ (1)
					for (int i_0 = 0; i_0 <= 31; i_0 += 1)
					{
						// carray: (2) => (2) @ (2)
						for (int i_1 = 2; i_1 <= 2; i_1 += 2)
						{
							// sub                   : i_0 i_1
							// ori_name              : M[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : M[0][0]
							// regulate_c_name       : M_V
							// input_type_conversion : (M[i_0][i_1]).to_string(2).c_str()
							if (&(M[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> M_V_tmp_mem;
								M_V_tmp_mem = (M[i_0][i_1]).to_string(2).c_str();
								M_2_V_tvin_wrapc_buffer[hls_map_index].range(31, 0) = M_V_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 32; i++)
		{
			sprintf(tvin_M_2_V, "%s\n", (M_2_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_M_2_V, tvin_M_2_V);
		}

		tcl_file.set_num(32, &tcl_file.M_2_V_depth);
		sprintf(tvin_M_2_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_M_2_V, tvin_M_2_V);

		// release memory allocation
		delete [] M_2_V_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_M_3_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_M_3_V, tvin_M_3_V);

		sc_bv<32>* M_3_V_tvin_wrapc_buffer = new sc_bv<32>[32];

		// RTL Name: M_3_V
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: M.V(31, 0)
				{
					// carray: (0) => (31) @ (1)
					for (int i_0 = 0; i_0 <= 31; i_0 += 1)
					{
						// carray: (3) => (3) @ (2)
						for (int i_1 = 3; i_1 <= 3; i_1 += 2)
						{
							// sub                   : i_0 i_1
							// ori_name              : M[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : M[0][0]
							// regulate_c_name       : M_V
							// input_type_conversion : (M[i_0][i_1]).to_string(2).c_str()
							if (&(M[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> M_V_tmp_mem;
								M_V_tmp_mem = (M[i_0][i_1]).to_string(2).c_str();
								M_3_V_tvin_wrapc_buffer[hls_map_index].range(31, 0) = M_V_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 32; i++)
		{
			sprintf(tvin_M_3_V, "%s\n", (M_3_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_M_3_V, tvin_M_3_V);
		}

		tcl_file.set_num(32, &tcl_file.M_3_V_depth);
		sprintf(tvin_M_3_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_M_3_V, tvin_M_3_V);

		// release memory allocation
		delete [] M_3_V_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_M_4_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_M_4_V, tvin_M_4_V);

		sc_bv<32>* M_4_V_tvin_wrapc_buffer = new sc_bv<32>[32];

		// RTL Name: M_4_V
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: M.V(31, 0)
				{
					// carray: (0) => (31) @ (1)
					for (int i_0 = 0; i_0 <= 31; i_0 += 1)
					{
						// carray: (4) => (4) @ (2)
						for (int i_1 = 4; i_1 <= 4; i_1 += 2)
						{
							// sub                   : i_0 i_1
							// ori_name              : M[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : M[0][0]
							// regulate_c_name       : M_V
							// input_type_conversion : (M[i_0][i_1]).to_string(2).c_str()
							if (&(M[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> M_V_tmp_mem;
								M_V_tmp_mem = (M[i_0][i_1]).to_string(2).c_str();
								M_4_V_tvin_wrapc_buffer[hls_map_index].range(31, 0) = M_V_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 32; i++)
		{
			sprintf(tvin_M_4_V, "%s\n", (M_4_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_M_4_V, tvin_M_4_V);
		}

		tcl_file.set_num(32, &tcl_file.M_4_V_depth);
		sprintf(tvin_M_4_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_M_4_V, tvin_M_4_V);

		// release memory allocation
		delete [] M_4_V_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_M_5_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_M_5_V, tvin_M_5_V);

		sc_bv<32>* M_5_V_tvin_wrapc_buffer = new sc_bv<32>[32];

		// RTL Name: M_5_V
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: M.V(31, 0)
				{
					// carray: (0) => (31) @ (1)
					for (int i_0 = 0; i_0 <= 31; i_0 += 1)
					{
						// carray: (5) => (5) @ (2)
						for (int i_1 = 5; i_1 <= 5; i_1 += 2)
						{
							// sub                   : i_0 i_1
							// ori_name              : M[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : M[0][0]
							// regulate_c_name       : M_V
							// input_type_conversion : (M[i_0][i_1]).to_string(2).c_str()
							if (&(M[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> M_V_tmp_mem;
								M_V_tmp_mem = (M[i_0][i_1]).to_string(2).c_str();
								M_5_V_tvin_wrapc_buffer[hls_map_index].range(31, 0) = M_V_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 32; i++)
		{
			sprintf(tvin_M_5_V, "%s\n", (M_5_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_M_5_V, tvin_M_5_V);
		}

		tcl_file.set_num(32, &tcl_file.M_5_V_depth);
		sprintf(tvin_M_5_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_M_5_V, tvin_M_5_V);

		// release memory allocation
		delete [] M_5_V_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_M_6_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_M_6_V, tvin_M_6_V);

		sc_bv<32>* M_6_V_tvin_wrapc_buffer = new sc_bv<32>[32];

		// RTL Name: M_6_V
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: M.V(31, 0)
				{
					// carray: (0) => (31) @ (1)
					for (int i_0 = 0; i_0 <= 31; i_0 += 1)
					{
						// carray: (6) => (6) @ (2)
						for (int i_1 = 6; i_1 <= 6; i_1 += 2)
						{
							// sub                   : i_0 i_1
							// ori_name              : M[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : M[0][0]
							// regulate_c_name       : M_V
							// input_type_conversion : (M[i_0][i_1]).to_string(2).c_str()
							if (&(M[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> M_V_tmp_mem;
								M_V_tmp_mem = (M[i_0][i_1]).to_string(2).c_str();
								M_6_V_tvin_wrapc_buffer[hls_map_index].range(31, 0) = M_V_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 32; i++)
		{
			sprintf(tvin_M_6_V, "%s\n", (M_6_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_M_6_V, tvin_M_6_V);
		}

		tcl_file.set_num(32, &tcl_file.M_6_V_depth);
		sprintf(tvin_M_6_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_M_6_V, tvin_M_6_V);

		// release memory allocation
		delete [] M_6_V_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_M_7_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_M_7_V, tvin_M_7_V);

		sc_bv<32>* M_7_V_tvin_wrapc_buffer = new sc_bv<32>[32];

		// RTL Name: M_7_V
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: M.V(31, 0)
				{
					// carray: (0) => (31) @ (1)
					for (int i_0 = 0; i_0 <= 31; i_0 += 1)
					{
						// carray: (7) => (7) @ (2)
						for (int i_1 = 7; i_1 <= 7; i_1 += 2)
						{
							// sub                   : i_0 i_1
							// ori_name              : M[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : M[0][0]
							// regulate_c_name       : M_V
							// input_type_conversion : (M[i_0][i_1]).to_string(2).c_str()
							if (&(M[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> M_V_tmp_mem;
								M_V_tmp_mem = (M[i_0][i_1]).to_string(2).c_str();
								M_7_V_tvin_wrapc_buffer[hls_map_index].range(31, 0) = M_V_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 32; i++)
		{
			sprintf(tvin_M_7_V, "%s\n", (M_7_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_M_7_V, tvin_M_7_V);
		}

		tcl_file.set_num(32, &tcl_file.M_7_V_depth);
		sprintf(tvin_M_7_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_M_7_V, tvin_M_7_V);

		// release memory allocation
		delete [] M_7_V_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_M_8_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_M_8_V, tvin_M_8_V);

		sc_bv<32>* M_8_V_tvin_wrapc_buffer = new sc_bv<32>[32];

		// RTL Name: M_8_V
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: M.V(31, 0)
				{
					// carray: (0) => (31) @ (1)
					for (int i_0 = 0; i_0 <= 31; i_0 += 1)
					{
						// carray: (8) => (8) @ (2)
						for (int i_1 = 8; i_1 <= 8; i_1 += 2)
						{
							// sub                   : i_0 i_1
							// ori_name              : M[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : M[0][0]
							// regulate_c_name       : M_V
							// input_type_conversion : (M[i_0][i_1]).to_string(2).c_str()
							if (&(M[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> M_V_tmp_mem;
								M_V_tmp_mem = (M[i_0][i_1]).to_string(2).c_str();
								M_8_V_tvin_wrapc_buffer[hls_map_index].range(31, 0) = M_V_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 32; i++)
		{
			sprintf(tvin_M_8_V, "%s\n", (M_8_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_M_8_V, tvin_M_8_V);
		}

		tcl_file.set_num(32, &tcl_file.M_8_V_depth);
		sprintf(tvin_M_8_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_M_8_V, tvin_M_8_V);

		// release memory allocation
		delete [] M_8_V_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_M_9_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_M_9_V, tvin_M_9_V);

		sc_bv<32>* M_9_V_tvin_wrapc_buffer = new sc_bv<32>[32];

		// RTL Name: M_9_V
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: M.V(31, 0)
				{
					// carray: (0) => (31) @ (1)
					for (int i_0 = 0; i_0 <= 31; i_0 += 1)
					{
						// carray: (9) => (9) @ (2)
						for (int i_1 = 9; i_1 <= 9; i_1 += 2)
						{
							// sub                   : i_0 i_1
							// ori_name              : M[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : M[0][0]
							// regulate_c_name       : M_V
							// input_type_conversion : (M[i_0][i_1]).to_string(2).c_str()
							if (&(M[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> M_V_tmp_mem;
								M_V_tmp_mem = (M[i_0][i_1]).to_string(2).c_str();
								M_9_V_tvin_wrapc_buffer[hls_map_index].range(31, 0) = M_V_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 32; i++)
		{
			sprintf(tvin_M_9_V, "%s\n", (M_9_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_M_9_V, tvin_M_9_V);
		}

		tcl_file.set_num(32, &tcl_file.M_9_V_depth);
		sprintf(tvin_M_9_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_M_9_V, tvin_M_9_V);

		// release memory allocation
		delete [] M_9_V_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_M_10_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_M_10_V, tvin_M_10_V);

		sc_bv<32>* M_10_V_tvin_wrapc_buffer = new sc_bv<32>[32];

		// RTL Name: M_10_V
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: M.V(31, 0)
				{
					// carray: (0) => (31) @ (1)
					for (int i_0 = 0; i_0 <= 31; i_0 += 1)
					{
						// carray: (10) => (10) @ (2)
						for (int i_1 = 10; i_1 <= 10; i_1 += 2)
						{
							// sub                   : i_0 i_1
							// ori_name              : M[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : M[0][0]
							// regulate_c_name       : M_V
							// input_type_conversion : (M[i_0][i_1]).to_string(2).c_str()
							if (&(M[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> M_V_tmp_mem;
								M_V_tmp_mem = (M[i_0][i_1]).to_string(2).c_str();
								M_10_V_tvin_wrapc_buffer[hls_map_index].range(31, 0) = M_V_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 32; i++)
		{
			sprintf(tvin_M_10_V, "%s\n", (M_10_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_M_10_V, tvin_M_10_V);
		}

		tcl_file.set_num(32, &tcl_file.M_10_V_depth);
		sprintf(tvin_M_10_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_M_10_V, tvin_M_10_V);

		// release memory allocation
		delete [] M_10_V_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_M_11_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_M_11_V, tvin_M_11_V);

		sc_bv<32>* M_11_V_tvin_wrapc_buffer = new sc_bv<32>[32];

		// RTL Name: M_11_V
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: M.V(31, 0)
				{
					// carray: (0) => (31) @ (1)
					for (int i_0 = 0; i_0 <= 31; i_0 += 1)
					{
						// carray: (11) => (11) @ (2)
						for (int i_1 = 11; i_1 <= 11; i_1 += 2)
						{
							// sub                   : i_0 i_1
							// ori_name              : M[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : M[0][0]
							// regulate_c_name       : M_V
							// input_type_conversion : (M[i_0][i_1]).to_string(2).c_str()
							if (&(M[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> M_V_tmp_mem;
								M_V_tmp_mem = (M[i_0][i_1]).to_string(2).c_str();
								M_11_V_tvin_wrapc_buffer[hls_map_index].range(31, 0) = M_V_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 32; i++)
		{
			sprintf(tvin_M_11_V, "%s\n", (M_11_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_M_11_V, tvin_M_11_V);
		}

		tcl_file.set_num(32, &tcl_file.M_11_V_depth);
		sprintf(tvin_M_11_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_M_11_V, tvin_M_11_V);

		// release memory allocation
		delete [] M_11_V_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_M_12_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_M_12_V, tvin_M_12_V);

		sc_bv<32>* M_12_V_tvin_wrapc_buffer = new sc_bv<32>[32];

		// RTL Name: M_12_V
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: M.V(31, 0)
				{
					// carray: (0) => (31) @ (1)
					for (int i_0 = 0; i_0 <= 31; i_0 += 1)
					{
						// carray: (12) => (12) @ (2)
						for (int i_1 = 12; i_1 <= 12; i_1 += 2)
						{
							// sub                   : i_0 i_1
							// ori_name              : M[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : M[0][0]
							// regulate_c_name       : M_V
							// input_type_conversion : (M[i_0][i_1]).to_string(2).c_str()
							if (&(M[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> M_V_tmp_mem;
								M_V_tmp_mem = (M[i_0][i_1]).to_string(2).c_str();
								M_12_V_tvin_wrapc_buffer[hls_map_index].range(31, 0) = M_V_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 32; i++)
		{
			sprintf(tvin_M_12_V, "%s\n", (M_12_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_M_12_V, tvin_M_12_V);
		}

		tcl_file.set_num(32, &tcl_file.M_12_V_depth);
		sprintf(tvin_M_12_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_M_12_V, tvin_M_12_V);

		// release memory allocation
		delete [] M_12_V_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_M_13_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_M_13_V, tvin_M_13_V);

		sc_bv<32>* M_13_V_tvin_wrapc_buffer = new sc_bv<32>[32];

		// RTL Name: M_13_V
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: M.V(31, 0)
				{
					// carray: (0) => (31) @ (1)
					for (int i_0 = 0; i_0 <= 31; i_0 += 1)
					{
						// carray: (13) => (13) @ (2)
						for (int i_1 = 13; i_1 <= 13; i_1 += 2)
						{
							// sub                   : i_0 i_1
							// ori_name              : M[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : M[0][0]
							// regulate_c_name       : M_V
							// input_type_conversion : (M[i_0][i_1]).to_string(2).c_str()
							if (&(M[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> M_V_tmp_mem;
								M_V_tmp_mem = (M[i_0][i_1]).to_string(2).c_str();
								M_13_V_tvin_wrapc_buffer[hls_map_index].range(31, 0) = M_V_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 32; i++)
		{
			sprintf(tvin_M_13_V, "%s\n", (M_13_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_M_13_V, tvin_M_13_V);
		}

		tcl_file.set_num(32, &tcl_file.M_13_V_depth);
		sprintf(tvin_M_13_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_M_13_V, tvin_M_13_V);

		// release memory allocation
		delete [] M_13_V_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_M_14_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_M_14_V, tvin_M_14_V);

		sc_bv<32>* M_14_V_tvin_wrapc_buffer = new sc_bv<32>[32];

		// RTL Name: M_14_V
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: M.V(31, 0)
				{
					// carray: (0) => (31) @ (1)
					for (int i_0 = 0; i_0 <= 31; i_0 += 1)
					{
						// carray: (14) => (14) @ (2)
						for (int i_1 = 14; i_1 <= 14; i_1 += 2)
						{
							// sub                   : i_0 i_1
							// ori_name              : M[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : M[0][0]
							// regulate_c_name       : M_V
							// input_type_conversion : (M[i_0][i_1]).to_string(2).c_str()
							if (&(M[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> M_V_tmp_mem;
								M_V_tmp_mem = (M[i_0][i_1]).to_string(2).c_str();
								M_14_V_tvin_wrapc_buffer[hls_map_index].range(31, 0) = M_V_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 32; i++)
		{
			sprintf(tvin_M_14_V, "%s\n", (M_14_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_M_14_V, tvin_M_14_V);
		}

		tcl_file.set_num(32, &tcl_file.M_14_V_depth);
		sprintf(tvin_M_14_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_M_14_V, tvin_M_14_V);

		// release memory allocation
		delete [] M_14_V_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_M_15_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_M_15_V, tvin_M_15_V);

		sc_bv<32>* M_15_V_tvin_wrapc_buffer = new sc_bv<32>[32];

		// RTL Name: M_15_V
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: M.V(31, 0)
				{
					// carray: (0) => (31) @ (1)
					for (int i_0 = 0; i_0 <= 31; i_0 += 1)
					{
						// carray: (15) => (15) @ (2)
						for (int i_1 = 15; i_1 <= 15; i_1 += 2)
						{
							// sub                   : i_0 i_1
							// ori_name              : M[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : M[0][0]
							// regulate_c_name       : M_V
							// input_type_conversion : (M[i_0][i_1]).to_string(2).c_str()
							if (&(M[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> M_V_tmp_mem;
								M_V_tmp_mem = (M[i_0][i_1]).to_string(2).c_str();
								M_15_V_tvin_wrapc_buffer[hls_map_index].range(31, 0) = M_V_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 32; i++)
		{
			sprintf(tvin_M_15_V, "%s\n", (M_15_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_M_15_V, tvin_M_15_V);
		}

		tcl_file.set_num(32, &tcl_file.M_15_V_depth);
		sprintf(tvin_M_15_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_M_15_V, tvin_M_15_V);

		// release memory allocation
		delete [] M_15_V_tvin_wrapc_buffer;

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		prepareMessage(input, bitlength, M);

		CodeState = DUMP_OUTPUTS;

		// [[transaction]]
		sprintf(tvout_M_0_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_M_0_V, tvout_M_0_V);

		sc_bv<32>* M_0_V_tvout_wrapc_buffer = new sc_bv<32>[32];

		// RTL Name: M_0_V
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: M.V(31, 0)
				{
					// carray: (0) => (31) @ (1)
					for (int i_0 = 0; i_0 <= 31; i_0 += 1)
					{
						// carray: (0) => (0) @ (2)
						for (int i_1 = 0; i_1 <= 0; i_1 += 2)
						{
							// sub                   : i_0 i_1
							// ori_name              : M[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : M[0][0]
							// regulate_c_name       : M_V
							// input_type_conversion : (M[i_0][i_1]).to_string(2).c_str()
							if (&(M[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> M_V_tmp_mem;
								M_V_tmp_mem = (M[i_0][i_1]).to_string(2).c_str();
								M_0_V_tvout_wrapc_buffer[hls_map_index].range(31, 0) = M_V_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 32; i++)
		{
			sprintf(tvout_M_0_V, "%s\n", (M_0_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_M_0_V, tvout_M_0_V);
		}

		tcl_file.set_num(32, &tcl_file.M_0_V_depth);
		sprintf(tvout_M_0_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_M_0_V, tvout_M_0_V);

		// release memory allocation
		delete [] M_0_V_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_M_1_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_M_1_V, tvout_M_1_V);

		sc_bv<32>* M_1_V_tvout_wrapc_buffer = new sc_bv<32>[32];

		// RTL Name: M_1_V
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: M.V(31, 0)
				{
					// carray: (0) => (31) @ (1)
					for (int i_0 = 0; i_0 <= 31; i_0 += 1)
					{
						// carray: (1) => (1) @ (2)
						for (int i_1 = 1; i_1 <= 1; i_1 += 2)
						{
							// sub                   : i_0 i_1
							// ori_name              : M[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : M[0][0]
							// regulate_c_name       : M_V
							// input_type_conversion : (M[i_0][i_1]).to_string(2).c_str()
							if (&(M[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> M_V_tmp_mem;
								M_V_tmp_mem = (M[i_0][i_1]).to_string(2).c_str();
								M_1_V_tvout_wrapc_buffer[hls_map_index].range(31, 0) = M_V_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 32; i++)
		{
			sprintf(tvout_M_1_V, "%s\n", (M_1_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_M_1_V, tvout_M_1_V);
		}

		tcl_file.set_num(32, &tcl_file.M_1_V_depth);
		sprintf(tvout_M_1_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_M_1_V, tvout_M_1_V);

		// release memory allocation
		delete [] M_1_V_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_M_2_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_M_2_V, tvout_M_2_V);

		sc_bv<32>* M_2_V_tvout_wrapc_buffer = new sc_bv<32>[32];

		// RTL Name: M_2_V
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: M.V(31, 0)
				{
					// carray: (0) => (31) @ (1)
					for (int i_0 = 0; i_0 <= 31; i_0 += 1)
					{
						// carray: (2) => (2) @ (2)
						for (int i_1 = 2; i_1 <= 2; i_1 += 2)
						{
							// sub                   : i_0 i_1
							// ori_name              : M[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : M[0][0]
							// regulate_c_name       : M_V
							// input_type_conversion : (M[i_0][i_1]).to_string(2).c_str()
							if (&(M[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> M_V_tmp_mem;
								M_V_tmp_mem = (M[i_0][i_1]).to_string(2).c_str();
								M_2_V_tvout_wrapc_buffer[hls_map_index].range(31, 0) = M_V_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 32; i++)
		{
			sprintf(tvout_M_2_V, "%s\n", (M_2_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_M_2_V, tvout_M_2_V);
		}

		tcl_file.set_num(32, &tcl_file.M_2_V_depth);
		sprintf(tvout_M_2_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_M_2_V, tvout_M_2_V);

		// release memory allocation
		delete [] M_2_V_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_M_3_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_M_3_V, tvout_M_3_V);

		sc_bv<32>* M_3_V_tvout_wrapc_buffer = new sc_bv<32>[32];

		// RTL Name: M_3_V
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: M.V(31, 0)
				{
					// carray: (0) => (31) @ (1)
					for (int i_0 = 0; i_0 <= 31; i_0 += 1)
					{
						// carray: (3) => (3) @ (2)
						for (int i_1 = 3; i_1 <= 3; i_1 += 2)
						{
							// sub                   : i_0 i_1
							// ori_name              : M[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : M[0][0]
							// regulate_c_name       : M_V
							// input_type_conversion : (M[i_0][i_1]).to_string(2).c_str()
							if (&(M[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> M_V_tmp_mem;
								M_V_tmp_mem = (M[i_0][i_1]).to_string(2).c_str();
								M_3_V_tvout_wrapc_buffer[hls_map_index].range(31, 0) = M_V_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 32; i++)
		{
			sprintf(tvout_M_3_V, "%s\n", (M_3_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_M_3_V, tvout_M_3_V);
		}

		tcl_file.set_num(32, &tcl_file.M_3_V_depth);
		sprintf(tvout_M_3_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_M_3_V, tvout_M_3_V);

		// release memory allocation
		delete [] M_3_V_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_M_4_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_M_4_V, tvout_M_4_V);

		sc_bv<32>* M_4_V_tvout_wrapc_buffer = new sc_bv<32>[32];

		// RTL Name: M_4_V
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: M.V(31, 0)
				{
					// carray: (0) => (31) @ (1)
					for (int i_0 = 0; i_0 <= 31; i_0 += 1)
					{
						// carray: (4) => (4) @ (2)
						for (int i_1 = 4; i_1 <= 4; i_1 += 2)
						{
							// sub                   : i_0 i_1
							// ori_name              : M[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : M[0][0]
							// regulate_c_name       : M_V
							// input_type_conversion : (M[i_0][i_1]).to_string(2).c_str()
							if (&(M[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> M_V_tmp_mem;
								M_V_tmp_mem = (M[i_0][i_1]).to_string(2).c_str();
								M_4_V_tvout_wrapc_buffer[hls_map_index].range(31, 0) = M_V_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 32; i++)
		{
			sprintf(tvout_M_4_V, "%s\n", (M_4_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_M_4_V, tvout_M_4_V);
		}

		tcl_file.set_num(32, &tcl_file.M_4_V_depth);
		sprintf(tvout_M_4_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_M_4_V, tvout_M_4_V);

		// release memory allocation
		delete [] M_4_V_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_M_5_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_M_5_V, tvout_M_5_V);

		sc_bv<32>* M_5_V_tvout_wrapc_buffer = new sc_bv<32>[32];

		// RTL Name: M_5_V
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: M.V(31, 0)
				{
					// carray: (0) => (31) @ (1)
					for (int i_0 = 0; i_0 <= 31; i_0 += 1)
					{
						// carray: (5) => (5) @ (2)
						for (int i_1 = 5; i_1 <= 5; i_1 += 2)
						{
							// sub                   : i_0 i_1
							// ori_name              : M[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : M[0][0]
							// regulate_c_name       : M_V
							// input_type_conversion : (M[i_0][i_1]).to_string(2).c_str()
							if (&(M[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> M_V_tmp_mem;
								M_V_tmp_mem = (M[i_0][i_1]).to_string(2).c_str();
								M_5_V_tvout_wrapc_buffer[hls_map_index].range(31, 0) = M_V_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 32; i++)
		{
			sprintf(tvout_M_5_V, "%s\n", (M_5_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_M_5_V, tvout_M_5_V);
		}

		tcl_file.set_num(32, &tcl_file.M_5_V_depth);
		sprintf(tvout_M_5_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_M_5_V, tvout_M_5_V);

		// release memory allocation
		delete [] M_5_V_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_M_6_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_M_6_V, tvout_M_6_V);

		sc_bv<32>* M_6_V_tvout_wrapc_buffer = new sc_bv<32>[32];

		// RTL Name: M_6_V
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: M.V(31, 0)
				{
					// carray: (0) => (31) @ (1)
					for (int i_0 = 0; i_0 <= 31; i_0 += 1)
					{
						// carray: (6) => (6) @ (2)
						for (int i_1 = 6; i_1 <= 6; i_1 += 2)
						{
							// sub                   : i_0 i_1
							// ori_name              : M[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : M[0][0]
							// regulate_c_name       : M_V
							// input_type_conversion : (M[i_0][i_1]).to_string(2).c_str()
							if (&(M[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> M_V_tmp_mem;
								M_V_tmp_mem = (M[i_0][i_1]).to_string(2).c_str();
								M_6_V_tvout_wrapc_buffer[hls_map_index].range(31, 0) = M_V_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 32; i++)
		{
			sprintf(tvout_M_6_V, "%s\n", (M_6_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_M_6_V, tvout_M_6_V);
		}

		tcl_file.set_num(32, &tcl_file.M_6_V_depth);
		sprintf(tvout_M_6_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_M_6_V, tvout_M_6_V);

		// release memory allocation
		delete [] M_6_V_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_M_7_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_M_7_V, tvout_M_7_V);

		sc_bv<32>* M_7_V_tvout_wrapc_buffer = new sc_bv<32>[32];

		// RTL Name: M_7_V
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: M.V(31, 0)
				{
					// carray: (0) => (31) @ (1)
					for (int i_0 = 0; i_0 <= 31; i_0 += 1)
					{
						// carray: (7) => (7) @ (2)
						for (int i_1 = 7; i_1 <= 7; i_1 += 2)
						{
							// sub                   : i_0 i_1
							// ori_name              : M[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : M[0][0]
							// regulate_c_name       : M_V
							// input_type_conversion : (M[i_0][i_1]).to_string(2).c_str()
							if (&(M[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> M_V_tmp_mem;
								M_V_tmp_mem = (M[i_0][i_1]).to_string(2).c_str();
								M_7_V_tvout_wrapc_buffer[hls_map_index].range(31, 0) = M_V_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 32; i++)
		{
			sprintf(tvout_M_7_V, "%s\n", (M_7_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_M_7_V, tvout_M_7_V);
		}

		tcl_file.set_num(32, &tcl_file.M_7_V_depth);
		sprintf(tvout_M_7_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_M_7_V, tvout_M_7_V);

		// release memory allocation
		delete [] M_7_V_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_M_8_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_M_8_V, tvout_M_8_V);

		sc_bv<32>* M_8_V_tvout_wrapc_buffer = new sc_bv<32>[32];

		// RTL Name: M_8_V
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: M.V(31, 0)
				{
					// carray: (0) => (31) @ (1)
					for (int i_0 = 0; i_0 <= 31; i_0 += 1)
					{
						// carray: (8) => (8) @ (2)
						for (int i_1 = 8; i_1 <= 8; i_1 += 2)
						{
							// sub                   : i_0 i_1
							// ori_name              : M[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : M[0][0]
							// regulate_c_name       : M_V
							// input_type_conversion : (M[i_0][i_1]).to_string(2).c_str()
							if (&(M[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> M_V_tmp_mem;
								M_V_tmp_mem = (M[i_0][i_1]).to_string(2).c_str();
								M_8_V_tvout_wrapc_buffer[hls_map_index].range(31, 0) = M_V_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 32; i++)
		{
			sprintf(tvout_M_8_V, "%s\n", (M_8_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_M_8_V, tvout_M_8_V);
		}

		tcl_file.set_num(32, &tcl_file.M_8_V_depth);
		sprintf(tvout_M_8_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_M_8_V, tvout_M_8_V);

		// release memory allocation
		delete [] M_8_V_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_M_9_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_M_9_V, tvout_M_9_V);

		sc_bv<32>* M_9_V_tvout_wrapc_buffer = new sc_bv<32>[32];

		// RTL Name: M_9_V
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: M.V(31, 0)
				{
					// carray: (0) => (31) @ (1)
					for (int i_0 = 0; i_0 <= 31; i_0 += 1)
					{
						// carray: (9) => (9) @ (2)
						for (int i_1 = 9; i_1 <= 9; i_1 += 2)
						{
							// sub                   : i_0 i_1
							// ori_name              : M[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : M[0][0]
							// regulate_c_name       : M_V
							// input_type_conversion : (M[i_0][i_1]).to_string(2).c_str()
							if (&(M[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> M_V_tmp_mem;
								M_V_tmp_mem = (M[i_0][i_1]).to_string(2).c_str();
								M_9_V_tvout_wrapc_buffer[hls_map_index].range(31, 0) = M_V_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 32; i++)
		{
			sprintf(tvout_M_9_V, "%s\n", (M_9_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_M_9_V, tvout_M_9_V);
		}

		tcl_file.set_num(32, &tcl_file.M_9_V_depth);
		sprintf(tvout_M_9_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_M_9_V, tvout_M_9_V);

		// release memory allocation
		delete [] M_9_V_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_M_10_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_M_10_V, tvout_M_10_V);

		sc_bv<32>* M_10_V_tvout_wrapc_buffer = new sc_bv<32>[32];

		// RTL Name: M_10_V
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: M.V(31, 0)
				{
					// carray: (0) => (31) @ (1)
					for (int i_0 = 0; i_0 <= 31; i_0 += 1)
					{
						// carray: (10) => (10) @ (2)
						for (int i_1 = 10; i_1 <= 10; i_1 += 2)
						{
							// sub                   : i_0 i_1
							// ori_name              : M[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : M[0][0]
							// regulate_c_name       : M_V
							// input_type_conversion : (M[i_0][i_1]).to_string(2).c_str()
							if (&(M[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> M_V_tmp_mem;
								M_V_tmp_mem = (M[i_0][i_1]).to_string(2).c_str();
								M_10_V_tvout_wrapc_buffer[hls_map_index].range(31, 0) = M_V_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 32; i++)
		{
			sprintf(tvout_M_10_V, "%s\n", (M_10_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_M_10_V, tvout_M_10_V);
		}

		tcl_file.set_num(32, &tcl_file.M_10_V_depth);
		sprintf(tvout_M_10_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_M_10_V, tvout_M_10_V);

		// release memory allocation
		delete [] M_10_V_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_M_11_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_M_11_V, tvout_M_11_V);

		sc_bv<32>* M_11_V_tvout_wrapc_buffer = new sc_bv<32>[32];

		// RTL Name: M_11_V
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: M.V(31, 0)
				{
					// carray: (0) => (31) @ (1)
					for (int i_0 = 0; i_0 <= 31; i_0 += 1)
					{
						// carray: (11) => (11) @ (2)
						for (int i_1 = 11; i_1 <= 11; i_1 += 2)
						{
							// sub                   : i_0 i_1
							// ori_name              : M[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : M[0][0]
							// regulate_c_name       : M_V
							// input_type_conversion : (M[i_0][i_1]).to_string(2).c_str()
							if (&(M[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> M_V_tmp_mem;
								M_V_tmp_mem = (M[i_0][i_1]).to_string(2).c_str();
								M_11_V_tvout_wrapc_buffer[hls_map_index].range(31, 0) = M_V_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 32; i++)
		{
			sprintf(tvout_M_11_V, "%s\n", (M_11_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_M_11_V, tvout_M_11_V);
		}

		tcl_file.set_num(32, &tcl_file.M_11_V_depth);
		sprintf(tvout_M_11_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_M_11_V, tvout_M_11_V);

		// release memory allocation
		delete [] M_11_V_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_M_12_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_M_12_V, tvout_M_12_V);

		sc_bv<32>* M_12_V_tvout_wrapc_buffer = new sc_bv<32>[32];

		// RTL Name: M_12_V
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: M.V(31, 0)
				{
					// carray: (0) => (31) @ (1)
					for (int i_0 = 0; i_0 <= 31; i_0 += 1)
					{
						// carray: (12) => (12) @ (2)
						for (int i_1 = 12; i_1 <= 12; i_1 += 2)
						{
							// sub                   : i_0 i_1
							// ori_name              : M[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : M[0][0]
							// regulate_c_name       : M_V
							// input_type_conversion : (M[i_0][i_1]).to_string(2).c_str()
							if (&(M[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> M_V_tmp_mem;
								M_V_tmp_mem = (M[i_0][i_1]).to_string(2).c_str();
								M_12_V_tvout_wrapc_buffer[hls_map_index].range(31, 0) = M_V_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 32; i++)
		{
			sprintf(tvout_M_12_V, "%s\n", (M_12_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_M_12_V, tvout_M_12_V);
		}

		tcl_file.set_num(32, &tcl_file.M_12_V_depth);
		sprintf(tvout_M_12_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_M_12_V, tvout_M_12_V);

		// release memory allocation
		delete [] M_12_V_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_M_13_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_M_13_V, tvout_M_13_V);

		sc_bv<32>* M_13_V_tvout_wrapc_buffer = new sc_bv<32>[32];

		// RTL Name: M_13_V
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: M.V(31, 0)
				{
					// carray: (0) => (31) @ (1)
					for (int i_0 = 0; i_0 <= 31; i_0 += 1)
					{
						// carray: (13) => (13) @ (2)
						for (int i_1 = 13; i_1 <= 13; i_1 += 2)
						{
							// sub                   : i_0 i_1
							// ori_name              : M[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : M[0][0]
							// regulate_c_name       : M_V
							// input_type_conversion : (M[i_0][i_1]).to_string(2).c_str()
							if (&(M[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> M_V_tmp_mem;
								M_V_tmp_mem = (M[i_0][i_1]).to_string(2).c_str();
								M_13_V_tvout_wrapc_buffer[hls_map_index].range(31, 0) = M_V_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 32; i++)
		{
			sprintf(tvout_M_13_V, "%s\n", (M_13_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_M_13_V, tvout_M_13_V);
		}

		tcl_file.set_num(32, &tcl_file.M_13_V_depth);
		sprintf(tvout_M_13_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_M_13_V, tvout_M_13_V);

		// release memory allocation
		delete [] M_13_V_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_M_14_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_M_14_V, tvout_M_14_V);

		sc_bv<32>* M_14_V_tvout_wrapc_buffer = new sc_bv<32>[32];

		// RTL Name: M_14_V
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: M.V(31, 0)
				{
					// carray: (0) => (31) @ (1)
					for (int i_0 = 0; i_0 <= 31; i_0 += 1)
					{
						// carray: (14) => (14) @ (2)
						for (int i_1 = 14; i_1 <= 14; i_1 += 2)
						{
							// sub                   : i_0 i_1
							// ori_name              : M[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : M[0][0]
							// regulate_c_name       : M_V
							// input_type_conversion : (M[i_0][i_1]).to_string(2).c_str()
							if (&(M[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> M_V_tmp_mem;
								M_V_tmp_mem = (M[i_0][i_1]).to_string(2).c_str();
								M_14_V_tvout_wrapc_buffer[hls_map_index].range(31, 0) = M_V_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 32; i++)
		{
			sprintf(tvout_M_14_V, "%s\n", (M_14_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_M_14_V, tvout_M_14_V);
		}

		tcl_file.set_num(32, &tcl_file.M_14_V_depth);
		sprintf(tvout_M_14_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_M_14_V, tvout_M_14_V);

		// release memory allocation
		delete [] M_14_V_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_M_15_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_M_15_V, tvout_M_15_V);

		sc_bv<32>* M_15_V_tvout_wrapc_buffer = new sc_bv<32>[32];

		// RTL Name: M_15_V
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: M.V(31, 0)
				{
					// carray: (0) => (31) @ (1)
					for (int i_0 = 0; i_0 <= 31; i_0 += 1)
					{
						// carray: (15) => (15) @ (2)
						for (int i_1 = 15; i_1 <= 15; i_1 += 2)
						{
							// sub                   : i_0 i_1
							// ori_name              : M[i_0][i_1]
							// sub_1st_elem          : 0 0
							// ori_name_1st_elem     : M[0][0]
							// regulate_c_name       : M_V
							// input_type_conversion : (M[i_0][i_1]).to_string(2).c_str()
							if (&(M[0][0]) != NULL) // check the null address if the c port is array or others
							{
								sc_lv<32> M_V_tmp_mem;
								M_V_tmp_mem = (M[i_0][i_1]).to_string(2).c_str();
								M_15_V_tvout_wrapc_buffer[hls_map_index].range(31, 0) = M_V_tmp_mem.range(31, 0);
                                 		       hls_map_index++;
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 32; i++)
		{
			sprintf(tvout_M_15_V, "%s\n", (M_15_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_M_15_V, tvout_M_15_V);
		}

		tcl_file.set_num(32, &tcl_file.M_15_V_depth);
		sprintf(tvout_M_15_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_M_15_V, tvout_M_15_V);

		// release memory allocation
		delete [] M_15_V_tvout_wrapc_buffer;

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "input_V"
		delete [] tvin_input_V;
		// release memory allocation: "bitlength"
		delete [] tvin_bitlength;
		// release memory allocation: "M_0_V"
		delete [] tvout_M_0_V;
		delete [] tvin_M_0_V;
		// release memory allocation: "M_1_V"
		delete [] tvout_M_1_V;
		delete [] tvin_M_1_V;
		// release memory allocation: "M_2_V"
		delete [] tvout_M_2_V;
		delete [] tvin_M_2_V;
		// release memory allocation: "M_3_V"
		delete [] tvout_M_3_V;
		delete [] tvin_M_3_V;
		// release memory allocation: "M_4_V"
		delete [] tvout_M_4_V;
		delete [] tvin_M_4_V;
		// release memory allocation: "M_5_V"
		delete [] tvout_M_5_V;
		delete [] tvin_M_5_V;
		// release memory allocation: "M_6_V"
		delete [] tvout_M_6_V;
		delete [] tvin_M_6_V;
		// release memory allocation: "M_7_V"
		delete [] tvout_M_7_V;
		delete [] tvin_M_7_V;
		// release memory allocation: "M_8_V"
		delete [] tvout_M_8_V;
		delete [] tvin_M_8_V;
		// release memory allocation: "M_9_V"
		delete [] tvout_M_9_V;
		delete [] tvin_M_9_V;
		// release memory allocation: "M_10_V"
		delete [] tvout_M_10_V;
		delete [] tvin_M_10_V;
		// release memory allocation: "M_11_V"
		delete [] tvout_M_11_V;
		delete [] tvin_M_11_V;
		// release memory allocation: "M_12_V"
		delete [] tvout_M_12_V;
		delete [] tvin_M_12_V;
		// release memory allocation: "M_13_V"
		delete [] tvout_M_13_V;
		delete [] tvin_M_13_V;
		// release memory allocation: "M_14_V"
		delete [] tvout_M_14_V;
		delete [] tvin_M_14_V;
		// release memory allocation: "M_15_V"
		delete [] tvout_M_15_V;
		delete [] tvin_M_15_V;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}

