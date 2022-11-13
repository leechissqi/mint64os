# file		makefile
# date		2022/11/13
# author	leechis
# brief		OS 이미지를 빌드하기 위한 make 파일

# 기본적으로 빌드를 수행할 목록
all: BootLoader Disk.img

BootLoader:
	@echo
	@echo ============== Build Boot Loader ===============
	@echo
	
	make -C 00.BootLoader

	@echo
	@echo ============== Build Complete ===============
	@echo

Disk.img: 00.BootLoader/BootLoader.bin
	@echo
	@echo ============== Dist Image Build Start ===============
	@echo

	cp 00.BootLoader/BootLoader.bin Disk.img

	@echo
	@echo ============== All Build Complete ===============

clean:
	make -C 00.BootLoader clean
	rm -f Disk.img
