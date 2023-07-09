# https://alexanius-blog.blogspot.com/2016/05/hello-world.html


.section .data
        hello_str:
                .string "Hello, world\n"
                .set hello_str_len, . - hello_str - 1

.section .text
        .globl _start

_start:
        # Здесь подготавливаем и вызываем write
        mov $1, %rax
        mov $1, %rdi
        mov $hello_str, %rsi
        mov $hello_str_len, %rdx
        syscall

        # Здесь подготавливаем и вызываем exit
        mov $60, %rax
        mov $0, %rdi
        syscall