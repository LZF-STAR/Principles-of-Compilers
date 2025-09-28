# RISC-V 斐波那契 - 寄存器优化版
    .text
    .align 2
    .globl main
main:
    # 最小栈帧（只保存必要寄存器）
    addi    sp, sp, -48
    sd      ra, 40(sp)
    sd      s1, 32(sp)    # 保存所有用到的s寄存器
    sd      s2, 24(sp)
    sd      s3, 16(sp)
    sd      s4, 8(sp)
    sd      s5, 0(sp)     # 新增s5
    
    # 全部使用寄存器，避免内存访问
    li      s1, 0         # a
    li      s2, 1         # b  
    li      s3, 1         # i
    li      s5, 10        # 常量'\n'，避免重复li
    
    call    getint
    mv      s4, a0        # n
    
    # 输出初始值
    mv      a0, s1
    call    putint
    mv      a0, s5        # 使用预存的换行符
    call    putch
    
    mv      a0, s2
    call    putint
    mv      a0, s5
    call    putch
    
.L_loop:
    bge     s3, s4, .L_end
    
    # 核心计算
    add     t0, s1, s2
    mv      s1, s2
    mv      s2, t0
    
    mv      a0, s2
    call    putint
    mv      a0, s5        # 复用换行符
    call    putch
    
    addi    s3, s3, 1
    j       .L_loop
    
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
