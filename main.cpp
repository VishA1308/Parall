#define _USE_MATH_DEFINES 
#include <cmath>
#include <iostream>
#include <vector>

using namespace std;

int main()
{
    const int N = 10000000;

    // ���������� �������� ���������� ��� ������ ���� ������
#ifdef USE_DOUBLE
    using NumberType = double;
    NumberType znach = (2 * M_PI) / N;
    NumberType sum = 0.0;
#else
    using NumberType = float;
    NumberType znach = (2 * M_PI) / N;
    NumberType sum = 0.0f;
#endif

    vector<NumberType> mas(N + 1); // ������� ������ ������� �������

    for (int i = 0; i <= N; i++)
    {
        mas[i] = sin(znach * i);
        sum += mas[i];
    }

    cout << sum << endl;
    return 0;
}
