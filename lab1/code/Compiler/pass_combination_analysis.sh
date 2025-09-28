#!/bin/bash

echo "=== Pass组合效果分析 ==="

# 分析函数：统计关键指标
analyze_pass_effect() {
    local input_file=$1
    local output_file=$2
    local pass_name=$3
    
    echo "--- $pass_name ---"
    echo "输入文件: $input_file"
    echo "输出文件: $output_file"
    
    # 统计关键指标
    local alloca_before=$(grep -c 'alloca' $input_file)
    local alloca_after=$(grep -c 'alloca' $output_file)
    local phi_before=$(grep -c 'phi' $input_file)
    local phi_after=$(grep -c 'phi' $output_file)
    local store_before=$(grep -c 'store' $input_file)
    local store_after=$(grep -c 'store' $output_file)
    
    echo "alloca: $alloca_before → $alloca_after"
    echo "phi节点: $phi_before → $phi_after"
    echo "store: $store_before → $store_after"
    echo ""
}

# 1. 基础pass组合：mem2reg + sroa
opt -passes="mem2reg,sroa" Fibonacci_O0.ll -S -o combo1_mem2reg_sroa.ll
analyze_pass_effect Fibonacci_O0.ll combo1_mem2reg_sroa.ll "组合1: mem2reg + sroa"

# 2. 添加死代码消除：mem2reg + sroa + dce
opt -passes="mem2reg,sroa,dce" Fibonacci_O0.ll -S -o combo2_add_dce.ll
analyze_pass_effect combo1_mem2reg_sroa.ll combo2_add_dce.ll "组合2: + dce"

# 3. 添加常量传播：+ sccp
opt -passes="mem2reg,sroa,dce,sccp" Fibonacci_O0.ll -S -o combo3_add_sccp.ll
analyze_pass_effect combo2_add_dce.ll combo3_add_sccp.ll "组合3: + sccp"

# 4. 添加循环相关优化：+ loop-simplify,indvars
opt -passes="mem2reg,sroa,dce,sccp,loop-simplify,indvars" Fibonacci_O0.ll -S -o combo4_add_loop.ll
analyze_pass_effect combo3_add_sccp.ll combo4_add_loop.ll "组合4: + loop优化"

# 5. 使用完整的function优化流水线
opt -passes="function(mem2reg,sroa,early-cse,simplifycfg)" Fibonacci_O0.ll -S -o combo5_function_pipeline.ll
analyze_pass_effect Fibonacci_O0.ll combo5_function_pipeline.ll "组合5: function流水线"

echo "=== 生成对比总结 ==="
echo "| Pass组合 | alloca | phi | store | 主要效果 |"
echo "|----------|--------|-----|-------|----------|"

# 统计最终效果
for file in Fibonacci_O0.ll combo*.ll; do
    alloca=$(grep -c 'alloca' $file)
    phi=$(grep -c 'phi' $file)
    store=$(grep -c 'store' $file)
    echo "| $(basename $file .ll) | $alloca | $phi | $store | |"
done

