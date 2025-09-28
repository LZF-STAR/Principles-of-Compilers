#include <iostream>
using namespace std;

// 添加一些可优化的元素
int fibonacci(int n) {
    if (n <= 1) return n;
    return fibonacci(n-1) + fibonacci(n-2);
}

int main() {
    int a, b, i, t, n;
    int sum = 0;
    int unused_var = 42;  // 死代码
    const int CONSTANT_ONE = 1;  // 常量传播机会
    
    a = 0;
    b = CONSTANT_ONE;  // 使用常量
    i = CONSTANT_ONE;
    
    cout << "Enter n: ";
    cin >> n;
    
    // 添加一些冗余计算和优化机会
    int double_n = n * 2;  // 可能的强度削减
    int temp_calc = double_n / 2;  // 冗余计算，应该被优化为n
    
    cout << "Computing Fibonacci sequence up to " << temp_calc << endl;
    cout << a << endl;
    cout << b << endl;
    
    while (i < n) {
        t = b;
        b = a + b;
        sum += b;  // 累加操作，增加数据依赖
        a = t;
        i = i + CONSTANT_ONE;  // 常量传播
        
        // 一些可能被优化的计算
        int redundant = i * 1;  // 强度削减机会
        if (redundant == i) {   // 总是为真，可能被优化
            cout << b << endl;
        }
    }
    
    // 死代码：永远不会执行
    if (unused_var == 0) {
        cout << "This will never print" << endl;
    }
    
    cout << "Sum of Fibonacci numbers: " << sum << endl;
    return 0;
}
