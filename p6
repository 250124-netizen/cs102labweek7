#include <iostream>

using namespace std;

int minOperations(int n) {
    int ops = 0;
    while (n > 0) {
        if (n % 2 == 0) {
            n /= 2; 
        } else {
            ops++;
            if (n == 3 || n % 4 == 1) {
                n -= 1;
            } else {
                n += 1; 
            }
        }
    }
    return ops;
}

int main() {
    int n;
    if (cin >> n) {
        cout << minOperations(n) << "\n";
    }
    return 0;
}
