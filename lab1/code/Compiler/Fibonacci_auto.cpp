#include <iostream>
using namespace std;

int main() {
    auto a = 0;      // 类型推导为int
    auto b = 1;      // 类型推导为int  
    auto result = a + b;  // 类型推导
    cout << result << endl;
}
