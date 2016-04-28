# it's alive

ASM=nasm -f bin
BOOTLOADER=bootloader
BUILD=build
SOFTWARE=software

all:
	$(ASM) $(SOFTWARE)/init.asm -o $(BUILD)/init.bin
	$(ASM) $(SOFTWARE)/login.asm -o $(BUILD)/login.bin
	$(ASM) $(SOFTWARE)/shell.asm -o $(BUILD)/shell.bin

	$(ASM) kernel.asm -o build/kernel.bin

	$(ASM) $(BOOTLOADER)/stage2.asm -o build/stage2.bin
	$(ASM) $(BOOTLOADER)/stage1.asm -o $(BUILD)/disk\ with\ omega.raw

	make clean

clean:
	rm -f	$(BUILD)/stage2.bin	\
		$(BUILD)/init.bin	\
		$(BUILD)/login.bin	\
		$(BUILD)/shell.bin
