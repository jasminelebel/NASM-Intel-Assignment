# NASM-Intel-Assignment
Performs division as a repeated subtraction, System Hardware, Winter 2020

Built for 64-bit architecture.

# Build for Linux

```bash
nasm -f elf64 nasm_programming_assignment.asm
gcc -no-pie -o nasm_programming_assignment ./nasm_programming_assignment.o
```

# Running on Linux

Simply run the command

```
./nasm_programming_assignment
```
