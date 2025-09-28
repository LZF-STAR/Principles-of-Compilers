int main() {
    int a = 42;
    int b = a * 1;  // 应该被优化
    int unused = 100;  // 死代码
    return b;
}
