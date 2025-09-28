#include <iostream>
using namespace std;

#define DEBUG_MODE

int main() {
    int a, b, i, t, n;
    
    a = 0;
    b = 1;
    i = 1;
    cin >> n;
    
#ifdef DEBUG_MODE
    cout << "Debug: Input n = " << n << endl;
#endif
    
    cout << a << endl;
    cout << b << endl;
    while (i < n) {
        t = b;
        b = a + b;
        
#ifdef DEBUG_MODE
        cout << "Debug: i = " << i << ", fib = " << b << endl;
#else
        cout << b << endl;
#endif
        
        a = t;
        i = i + 1;
    }
}
