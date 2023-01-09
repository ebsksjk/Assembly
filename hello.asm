; a "Hello World" program for 64-bit linux

	 global   _start
 
	 section  .text

_start:  mov	  rax, 1	;system call: write
	 mov	  rdi, 1	;we specify a file to write to, file handle 1 is stdout
	 mov	  rsi, message	;the address of the string we want to write
	 mov      rdx, 13       ;the number of bytes the string has
	 syscall                ;invoke the OS to finish the write

	 mov	  rax, 60       ;system call: exit
	 xor	  rdi, rdi      ;exit code 0 (why xor???)
	 syscall                ;invoke the OS again

	
	 section  .data
message: db	  "Hello World", 10  ;our String, 10 is ASCII Linefeed
