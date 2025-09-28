#include <iostream>
using namespace std;

// 计算斐波那契数列
int main() {
    int a, b, i, t, n;  // a和b是前两项，n是项数
    
    /* 初始化变量 */
    a = 0;
    b = 1;
    i = 1;
    cin >> n;
    cout << a << endl;
    cout << b << endl;
    while (i < n) {  // 循环计算
        t = b;
        b = a + b;
        cout << b << endl;
        a = t;
        i = i + 1;
    }  /* 循环结束 */
}
