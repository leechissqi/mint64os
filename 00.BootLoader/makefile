# file		makefile
# date		2022/11/13
# author	leechis
# brief		OS 이미지를 빌드하기 위한 make 파일

all: BootLoader.bin

BootLoader.bin: BootLoader.asm
	nasm -o BootLoader.bin BootLoader.asm

clean:
	rm -f BootLoader.bin