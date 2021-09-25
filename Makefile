# Makefile for avr-gcc, avrdude

SRC=sdlocker-tiny
BAUD=32
PRGDEV=/dev/ttyACM0
PRGTYPE=usbasp-clone
AVRTYPE=attiny85
AVRTYPESHORT=t85
AVRFREQ=8000000
CFLAGS=-g -DF_CPU=$(AVRFREQ) -Wall -Os -Werror -Wextra

all : $(SRC).hex

program : $(SRC).hex
	avrdude  -c $(PRGTYPE) -p $(AVRTYPESHORT) -v -e -U flash:w:$(SRC).hex -U lfuse:w:0xe2:m -U hfuse:w:0xdf:m -U efuse:w:0xff:m -B 1

$(SRC).o : $(SRC).cpp
	avr-gcc $(CFLAGS) -mmcu=$(AVRTYPE) -Wa,-ahlmns=$(SRC).lst -c -o $(SRC).o $(SRC).cpp

$(SRC).elf : $(SRC).o
	avr-gcc $(CFLAGS) -mmcu=$(AVRTYPE) -o $(SRC).elf $(SRC).o

$(SRC).hex : $(SRC).elf
	avr-objcopy -j .text -j .data -O ihex $(SRC).elf $(SRC).hex

clean :
	rm -f *.hex *.obj *.o *.lst *.elf
