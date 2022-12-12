GCC = riscv64-unknown-elf-gcc
AR = riscv64-unknown-elf-ar
FLAG = -march=rv32ic -mabi=ilp32 -O1

.PHONY: all

all: output.out

kStatistics.o: kStatistics.c
	$(GCC) $(FLAG) -o kStatistics.o -c kStatistics.c

kStatisticsLib.a: kStatistics.o
	$(AR) –rsc kStatisticsLib.a kStatistics.o

output.out: kStatisticsLib.a main.c
	$(GCC) $(FLAG) main.c kStatisticsLib.a -o output.out
	del *.a *.o