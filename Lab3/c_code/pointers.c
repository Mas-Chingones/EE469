/*
Author  : Adolfo Pineda
Title   : Working with pointers
Summary : Program that explores pointers by experimenting
          with pointer variables. References and dereferences
          the addresses themselves, computes a formula that
          consists of pointer variables, and displays the results
*/

#include<stdlib.h>
#include<stdio.h>
#include<string.h>

void practice(void);
void variables(void);

int main() {
	practice();
	variables();

	return 0;
}

// References the addresses of the created variables
// and dereferences them to display the values.
void practice() {
	int one = 1;
	int two = 2;
	float three = 3.0;
	float four = 4.0;
	char a = 'a';
	char b = 'b';

	int* onePtr;
	float* threePtr;
	char* aPtr;

	onePtr = &one;
	printf("Value of variable one:   %d\n", *onePtr);
	onePtr = &two;
	printf("Value of variable two:   %d\n", *onePtr);

	threePtr = &three;
	printf("Value of variable three: %f\n", *threePtr);
	threePtr = &four;
	printf("Value of variable four:  %f\n", *threePtr);

	aPtr = &a;
	printf("Value of variable a:     %c\n", *aPtr);
	aPtr = &b;
	printf("Value of variable b:     %c\n", *aPtr);
}

// Computes a formula that consists of
// pointer values and displays the result.
void variables() {
	int A = 25;
	int B = 16;
	int C = 7;
	int D = 4;
	int E = 9;
	int result = 0;

	int* aPtr = &A;
	int* bPtr = &B;
	int* cPtr = &C;
	int* dPtr = &D;
	int* ePtr = &E;

	result = ((*aPtr - *bPtr) * (*cPtr + *dPtr)) / *ePtr;
	printf("Result:  %d\n", result);
}
