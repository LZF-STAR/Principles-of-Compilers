# RISC-V斐波那契数列
    .text
    .align 2
    .globl main
main:
    # 函数序言
    addi    sp, sp, -32     
    sd      ra, 24(sp)      
    sd      s0, 16(sp)      
    addi    s0, sp, 32      
    
    # 使用寄存器存储变量（避免内存问题）
    li      s1, 0           # s1 = a = 0
    li      s2, 1           # s2 = b = 1
    li      s3, 1           # s3 = i = 1
    
    # 读取n
    call    getint          
    mv      s4, a0          # s4 = n
    
    # 输出初始a
    mv      a0, s1
    call    putint
    li      a0, 10
    call    putch
    
    # 输出初始b
    mv      a0, s2
    call    putint
    li      a0, 10
    call    putch
    
.L_loop:    
    # 检查循环条件
    bge     s3, s4, .L_end  # if (i >= n) exit
    
    # 计算下一个数
    add     t0, s1, s2      # t0 = a + b
    mv      s1, s2          # a = b
    mv      s2, t0          # b = t0 (新值)
    
    # 输出新值
    mv      a0, s2
    call    putint
    li      a0, 10
    call    putch
    
    # i++
    addi    s3, s3, 1
    
    j       .L_loop
    
.L_end:    
    li      a0, 0
    ld      ra, 24(sp)
    ld      s0, 16(sp)
    addi    sp, sp, 32
    ret
