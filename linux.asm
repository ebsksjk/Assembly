; calls c code

	global	main
	extern	puts

	section	.text
main:
	mov 	rdi, message
	call	puts wrt ..plt
	ret
message:
	db	"Testi Testikus", 0
