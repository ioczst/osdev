ASM_FILE = boot.asm
BIN_FILE = boot.bin


all: $(BIN_FILE)

$(BIN_FILE): $(ASM_FILE)
	nasm -f bin $< -o $@

clean:
	rm -f $(BIN_FILE)

qemu: $(BIN_FILE)
	qemu-system-x86_64 $<
