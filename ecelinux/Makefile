# Extract Vivado HLS include path
XILINX_VIVADO?=/opt/xilinx/Vivado/2019.2
XIL_HLS=source $(XILINX_VIVADO)/settings64.sh; vivado_hls
VHLS_INC=$(XILINX_VIVADO)/include

CC = g++
#CC = x86_64-w64-mingw32-g++

#Compilation flags
CFLAGS=-g -I${VHLS_INC} -DHLS_NO_XIL_FPO_LIB -std=c++11 -O3

TARGET = main.exe

TCL_SCRIPT=run.tcl

all: $(TARGET)

run: $(TARGET)
	./$(TARGET)

main.exe: main_tb.o dut.o sha256.o util.o miner.o # typedefs.h
	$(CC) $(CFLAGS) -o main main_tb.o dut.o sha256.o util.o miner.o

main_tb.o: main_tb.cpp #sha256.h miner.h util.h # typedefs.h
	$(CC) $(CFLAGS) -c main_tb.cpp

dut.o: dut.cpp # typedefs.h
	$(CC) $(CFLAGS) -c dut.cpp

miner.o: miner.cpp #sha256.h miner.h util.h # typedefs.h
	$(CC) $(CFLAGS) -c miner.cpp

sha256.o: miner.cpp #sha256.h # typedefs.h
	$(CC) $(CFLAGS) -c sha256.cpp

util.o: miner.cpp #util.h # typedefs.h
	$(CC) $(CFLAGS) -c util.cpp

clean:
	@echo "Clean up output files"
	rm -rf main.exe vivado_hls.log *.prj result out.dat *~
	rm main_tb.o 
	rm sha256.o
	rm util.o
	