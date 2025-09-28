#include <iostream>
using namespace std;

int main() {
    int a, b, t, n;
    
    a = 0;
    b = 1;
    cin >> n;
    cout << a << endl;
    cout << b << endl;
    for (int i = 1; i < n; i++) {
        t = b;
        b = a + b;
        cout << b << endl;
        a = t;
    }
}
