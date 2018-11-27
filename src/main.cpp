#include "calculator.h"
#include <iostream>

int main(void)
{
	Calculator	calc;
	double 		a;
	double 		b;

	a = 20.0;
	b = 10.0;
	std::cout << "<---- Simple Calculator ---->" << std::endl;
	std::cout << "a = " << a << " b = " << b << std::endl;
	std::cout << "a + b = " << calc.Add(a, b) << std::endl;
	std::cout << "a - b = " << calc.Sub(a, b) << std::endl;
	std::cout << "a * b = " << calc.Mul(a, b) << std::endl;
	std::cout << "a / b = " << calc.Div(a, b) << std::endl;
	return 0;
}
