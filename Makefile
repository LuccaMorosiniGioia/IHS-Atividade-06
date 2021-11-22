nasm_flags = -f elf32

all: build link run

build: main.asm main.c 
	@nasm $(nasm_flags) main.asm -o a_main.o
	@gcc -m32 -c main.c -o c_main.o
	@gcc -m32 -c print.c -o c_print.o

link: c_main.o a_main.o c_print.o
	@gcc -m32 -no-pie c_main.o a_main.o c_print.o -o prog

run: prog 
	@./prog

.PHONY : clean # .PHONY means clean is not a file or an object
clean: 
	rm *.o prog