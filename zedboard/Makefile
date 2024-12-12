#==========================================================================
# Makefile
#==========================================================================
# @brief: A makefile the compiles and runs the bitcoin-mining program


INC_PATH=/usr/include/vivado_hls
CFLAGS = -I${INC_PATH} -DHLS_NO_XIL_FPO_LIB -O3

.PHONY: all sw fpga

all: sw

bitcoin-arm: main_tb.cpp dut.cpp miner.cpp sha256.cpp util.cpp
	@echo "Compiling & executing digitrec software program on ARM ..."
	g++ ${CFLAGS} $^ -o $@

result/bitcoin_arm.txt: bitcoin-arm
	mkdir -p result
	./$< | tee $@

sw: result/bitcoin_arm.txt
	@echo "Result saved to $@"

bitcoin-fpga: host.cpp
	@echo "Compiling host program"
	g++ ${CFLAGS} $^ -o $@

fpga: bitcoin-fpga 
	@echo "Running bitcoin accelerator . . ."
	./$<

# Clean up the directory before submission
clean:
	@echo "Clean up output files"
	rm -rf bitcoin-arm vivado_hls.log *.prj result out.dat *~
	rm -rf bitcoin-fpga	