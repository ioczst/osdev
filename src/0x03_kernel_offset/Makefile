ASM_FILE = boot.asm
KERNEL_FILE = kernel.c
BIN_FILE = os-image.bin

all: $(BIN_FILE)

$(BIN_FILE): boot.bin kernel.bin
	cat boot.bin kernel.bin > $@

boot.bin: $(ASM_FILE)
	nasm -f bin $< -o $@

kernel.bin: kernel.o
	ld -o $@ -Ttext 0x1000 $< --oformat binary

kernel.o: $(KERNEL_FILE)
	gcc -ffreestanding -c $< -o $@

clean:
	rm -f $(BIN_FILE) boot.bin kernel.bin kernel.o

qemu: $(BIN_FILE)
	qemu-system-x86_64 $<
