#include <iostream>
#include <string>
using namespace std;

int main()
{
    int oper;
    double x = 2;
    double y = 3;
    cout << "Operacao (1:+, 2:-, 3:*, 4:/): ";
    cin >> oper;

    switch (oper)
    {
        case 1:
            cout << x + y ;
            break;
        case 2:
            cout << x - y ;
            break;
        case 3:
            cout << x * y ;
            break;
        case 4:
            cout << x / y ;
            break;
        default:
            cout << "A operacao '" << oper << "' nao eh valida";
    }
    cout << endl;
}
