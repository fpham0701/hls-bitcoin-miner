# Extract Vivado HLS include path
XILINX_VIVADO?=/opt/xilinx/Vivado/2019.2
XIL_HLS=source $(XILINX_VIVADO)/settings64.sh; vivado_hls
VHLS_INC=$(XILINX_VIVADO)/include

CC = g++
#CC = x86_64-w64-mingw32-g++

#Compliation flags
CFLAGS = -g -Wall

TARGET = main.exe

TCL_SCRIPT=run.tcl

all: $(TARGET)

run: $(TARGET)
	./$(TARGET)

main.exe: main.o sha256.o miner.o util.o
	$(CC) $(CFLAGS) -o main main.o sha256.o miner.o util.o

main.o: main.cpp sha256.h miner.h util.h
	$(CC) $(CFLAGS) -c main.cpp

miner.o: miner.cpp sha256.h miner.h util.h
	$(CC) $(CFLAGS) -c miner.cpp

sha256.o: miner.cpp sha256.h
	$(CC) $(CFLAGS) -c sha256.cpp

util.o: miner.cpp util.h
	$(CC) $(CFLAGS) -c util.cpp

clean:
	@echo "Clean up output files"
	rm -rf bnn-arm vivado_hls.log *.prj result out.dat *~
	rm main.o 
	rm miner.o
	rm sha256.o
	rm util.o
	