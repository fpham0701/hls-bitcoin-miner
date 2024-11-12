#==========================================================================
# Makefile
#==========================================================================
# @brief: A makefile the compiles and runs the bitcoin-mining program

# TODO add more


INC_PATH=/usr/include/vivado_hls
CFLAGS = -I${INC_PATH} -DHLS_NO_XIL_FPO_LIB -O3

.PHONY: all sw fpga

all: sw

bitcoin-arm: #TODO

sw: result/bitcoin_arm.txt
	@echo "Result saved to $@"

bitcoin-fpga: host.cpp #TODO

fpga: bitcoin-fpga 
	@echo "Runnign bitcoin accelerator . . ."
	./$<


# Clean up the directory before submission
clean:
	@echo "Clean up output files"
	rm -rf bitcoin-arm vivado_hls.log *.prj result out.dat *~
	rm -rf bitcoin-fpga	