#include <iostream>
using namespace std;

#define MAX_ITER 100
#define INPUT cin
#define OUTPUT cout
#define NEWLINE endl

int main() {
    int a, b, i, t, n;
    
    a = 0;
    b = 1;
    i = 1;
    INPUT >> n;
    OUTPUT << a << NEWLINE;
    OUTPUT << b << NEWLINE;
    while (i < n && i < MAX_ITER) {
        t = b;
        b = a + b;
        OUTPUT << b << NEWLINE;
        a = t;
        i = i + 1;
    }
}
