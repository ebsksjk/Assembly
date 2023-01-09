; we're just throwing the things back

      global  main
      extern  puts
      section .text

main:
      push    rdi         ;save our registers!
      push    rsi
      sub     rsp, 8      ; we must align the stack

      mov     rdi, [rsi]  ; the argument string to display
      call    puts        ; ...print!

      add     rsp, 8      ; restore rsp
      pop     rsi         ; restore saved registers
      pop     rdi

      add     rsi, 8      ; to the next argument!
      dec     rdi         ; count down
      jnz     main        ; if rdi not 0, jump to main

      ret
