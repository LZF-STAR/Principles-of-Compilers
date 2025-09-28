#!/bin/bash

echo "=== 开始分析关键优化pass的效果 ==="

# 分析函数1：统计LLVM IR的关键指标
analyze_ir() {
    local file=$1
    local name=$2
    echo "--- $name ---"
    echo "总行数: $(wc -l < $file)"
    echo "基本块: $(grep -c '^[0-9]*:' $file)"
    echo "alloca: $(grep -c 'alloca' $file)"
    echo "load: $(grep -c 'load' $file)"
    echo "store: $(grep -c 'store' $file)"
    echo "phi节点: $(grep -c 'phi' $file)"
    echo "br指令: $(grep -c '^  br' $file)"
    echo ""
}

# 1. 原始O0版本
cp Fibonacci_O0.ll step0_original.ll
analyze_ir step0_original.ll "步骤0: 原始O0版本"

# 2. 内存到寄存器提升 (mem2reg)
opt -passes=mem2reg Fibonacci_O0.ll -S -o step1_mem2reg.ll
analyze_ir step1_mem2reg.ll "步骤1: mem2reg后"

# 3. 死代码消除 (dce)
opt -passes=dce step1_mem2reg.ll -S -o step2_dce.ll
analyze_ir step2_dce.ll "步骤2: dce后"

# 4. 常量传播 (sccp)
opt -passes=sccp step2_dce.ll -S -o step3_sccp.ll
analyze_ir step3_sccp.ll "步骤3: sccp后"

# 5. 循环简化 (loop-simplify)
opt -passes=loop-simplify step3_sccp.ll -S -o step4_loop_simplify.ll
analyze_ir step4_loop_simplify.ll "步骤4: loop-simplify后"

# 6. 归纳变量简化 (indvars)
opt -passes=indvars step4_loop_simplify.ll -S -o step5_indvars.ll
analyze_ir step5_indvars.ll "步骤5: indvars后"

echo "=== 分析完成，生成了step0-step5的中间文件 ==="
