# RISC-V 斐波那契 - 循环展开版
    .text
    .align 2
    .globl main
main:
    addi    sp, sp, -48
    sd      ra, 40(sp)
    sd      s1, 32(sp)    
    sd      s2, 24(sp)
    sd      s3, 16(sp)
    sd      s4, 8(sp)
    sd      s5, 0(sp)
    
    li      s1, 0         # a
    li      s2, 1         # b
    li      s3, 1         # i（循环计数器，不是输出数量！）
    
    call    getint
    mv      s4, a0        # n
    
    # 无条件输出前两个
    mv      a0, s1
    call    putint
    li      a0, 10
    call    putch
    
    mv      a0, s2
    call    putint
    li      a0, 10
    call    putch
    
.L_loop2:
    bge     s3, s4, .L_end    # if (i >= n) exit
    
    # 第一个数
    add     s5, s1, s2    
    mv      s1, s2        
    mv      s2, s5        
    
    mv      a0, s2
    call    putint
    li      a0, 10
    call    putch
    
    addi    s3, s3, 1         # i++
    bge     s3, s4, .L_end    
    
    # 第二个数（展开）
    add     s5, s1, s2
    mv      s1, s2
    mv      s2, s5
    
    mv      a0, s2
    call    putint
    li      a0, 10
    call    putch
    
    addi    s3, s3, 1         # i++
    j       .L_loop2
    
.L_end:
    li      a0, 0
    ld      ra, 40(sp)
    ld      s1, 32(sp)
    ld      s2, 24(sp)
    ld      s3, 16(sp)
    ld      s4, 8(sp)
    ld      s5, 0(sp)
    addi    sp, sp, 48
    ret
