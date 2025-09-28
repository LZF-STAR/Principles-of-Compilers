#include <iostream>
using namespace std;

int main() {
    int a = 0;
    double b = 1.5;  // 改为double类型
    int i = 1;
    int n;
    cin >> n;
    while (i < n) {
        int t = b;    // 隐式类型转换：double to int
        b = a + b;    // 混合类型运算
        cout << b << endl;
        a = t;
        i = i + 1;
    }
}
