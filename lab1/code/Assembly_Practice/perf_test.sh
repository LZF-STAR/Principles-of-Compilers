#!/bin/bash
echo "=== 性能测试 (n=10000000) ==="
for i in 1 2 3; do
    echo -n "fib_v$i: "
    (time echo "10000000" | qemu-riscv64 ./fib_v$i > /dev/null) 2>&1 | grep real
done
