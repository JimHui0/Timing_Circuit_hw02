// This code generate inverter net list we used in pwm.v

#include <iostream>
#include <cmath>

using namespace std;

int main()
{
    const int row = 5, column = 5;
    int counter = 0;
    int r = 0;
    int c = 0;

    string inv_list[20] = {"INVXL", "INVX1", "INVX2", "INVX3"
                            , "INVX4", "INVX5", "INVX6", "INVX7"
                            , "INVX8", "INVX9", "INVX10", "INVX11"
                            , "INVX12", "INVX13", "INVX14", "INVX15"
                            , "INVX16", "INVX17", "INVX18", "INVX19"};

    for(int i=0; i<row; i++)
    {
        for(int j=0; j<column; j++)
        {
            int tmp = i*row + j;

            cout << "// Test " << tmp << " : " << inv_list[r]  << " -> " << inv_list[c] << "\n";
            cout << inv_list[r] << " I" << counter++ <<"(.A(clk), .Y(net["<< tmp << "]));\n";
            cout << inv_list[c] << " I" << counter++ <<"(.A(net["<< tmp << "]), .Y(pwm_out["<< tmp << "]));\n\n";
            c = pow(2, j);
        }
        r = pow(2, i);
        c = 0;
    }

    return 0;
}
