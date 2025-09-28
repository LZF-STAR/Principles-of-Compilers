#include <iostream>
using namespace std;

int a = 100;  // 全局变量a

int main() {
    int a = 0;  // 局部变量a，遮蔽全局a
    {
        int a = 50;  // 内层作用域a
        cout << a << endl;  // 应输出50
    }
    cout << a << endl;  // 应输出0
    cout << ::a << endl;  // 应输出100（全局a）
}
