# this is an hello world

# interrupt system is called at 0x90

# interrupt for write syscall is 0x10
# interrupt for exit syscall is 0x00
jmp start

db hello 'Hello World\n'
dn hello_len 0x0000000c

start:
	push hello
	push *hello_len
	push 0x10
	int 0x90


	push 0x02 # exit with status 2
	push 0x00
	int 0x90





