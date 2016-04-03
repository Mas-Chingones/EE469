/* // // // // // // // // // // // // // // // // // // // // // // // //

Author: Ian Gilman
Title: Net Income Calculator
Abstract / Introduction: This calculator uses base salary, federal,
   income tax rate, FICA tax rate, and state income tax rate (if any)
   to calculate net income.
Inputs:  (float) base salary - limited to non-negative float-sized numbers:
                  Gross annual income.
         (float) federal tax - limited to non-negative float-sized numbers:
                  Percent federal tax rate
         (float) fica tax - limited to non-negative float-sized numbers:
                  Percent Federal Insurance Contribution Act tax rate
         (float) state tax - limited to non-negative float-sized numbers:
                  Percent state tax rate

Outputs: (float) net income - limited to non-negative float-sized numbers,
                  rounded to nearest cent:
                  net annual income

Major Functions: calculate_net_income - takes salary (float), array of all taxes
                  (float array), and number of taxes (int), and returns net
                  income (float)

*/ // // // // // // // // // // // // // // // // // // // // // // // //



#include<stdlib.h>
#include<stdio.h>
#include<string.h>


// Program constants
#define NUM_OF_TAXES 3


// Function declarations
float prompt_user_for_float(char* float_name);
float calculate_net_income(float salary, float taxes[], int num_of_taxes);
void negative_float_check(float value);


// float value-name struct for representing calculator variables
typedef struct{
   float value;
   char name[50];
} flid;


int main() {
   // UI strings
   const char GREET[] = "Welcome to the net income calculator, 2016 US edition"
                        "\nAnswer the following questions to find out how much"
                        " money you have really made!\n";
   const char RESULT[] = "Your net income was found to be: $";
   const char END[] = "Thank you for using the net income calculator, ciao.";

   // Overall tax array and calculated net income
   float all_taxes[NUM_OF_TAXES];
   float net_income;

   // Calculator variable names
   const char SALARY_PROMPT[] = "base annual salary";
   const char FED_TAX_PROMPT[] = "federal tax rate percentage";
   const char FICA_TAX_PROMPT[] = "FICA tax rate percentage";
   const char STATE_TAX_PROMPT[] = "state tax rate percentage";

   // Calculator variables
   flid base_salary; // base annual salary
   flid fed_tax; // federal tax rate percentage
   flid fica_tax; // FICA tax rate percentage
   flid state_tax; // state tax rate percentage

   // Instantiate calculator variables with names
   strcpy(base_salary.name, SALARY_PROMPT);
   strcpy(fed_tax.name, FED_TAX_PROMPT);
   strcpy(fica_tax.name, FICA_TAX_PROMPT);
   strcpy(state_tax.name, STATE_TAX_PROMPT);

   ////////////
   // UI Start
   printf("%s", GREET);
   getchar(); // Press any key

   // Get calculator variable values from user
   base_salary.value = prompt_user_for_float(base_salary.name);
   fed_tax.value = prompt_user_for_float(fed_tax.name);
   fica_tax.value = prompt_user_for_float(fica_tax.name);
   state_tax.value = prompt_user_for_float(state_tax.name);

   // Aggregate taxes and calculate net income
   all_taxes[0] = fed_tax.value;
   all_taxes[1] = fica_tax.value;
   all_taxes[2] = state_tax.value;
   net_income = calculate_net_income
                (
                     base_salary.value,
                     all_taxes,
                     NUM_OF_TAXES
                );

   // Return result to the user and exit the program
   printf("%s%.2f\n", RESULT, net_income);
   printf("%s", END);
   return 0;
}


/*
   Prompt user for the float value corresponding to 'float-name' and then
   returns that float
*/
float prompt_user_for_float(char* float_name) {
    // user-value note: negative default value for error-checking
   float user_value = -1.0; // float corresponding to float_name

   // user prompt
   printf("Please enter your %s:\n", float_name);
   scanf("%f", &user_value);

   // ensure function does not return a negative value
   negative_float_check(user_value);
   return user_value;
}

/*
   Returns the net income based on 'salary' and any float in 'taxes' which
   NEEDS to be 'num_of_taxes' elements in size. Returns error if net income
   is negative and then ends the program.
*/
float calculate_net_income(float salary, float taxes[], int num_of_taxes) {
   float net_income; // income after taxes
   float total_tax = 0; // sum of tax percentages
   int i; // loop iterator

   // find sum of taxes
   for(i = 0; i < num_of_taxes; i++) {
      total_tax += taxes[i];
   }

   // calculate income after taxes
   net_income = salary * (1 - (total_tax / 100));
   negative_float_check(net_income);
   return net_income;
}

/*
   Detects if 'value' is negative and if so, alerts user, ending program
*/
void negative_float_check(float value) {
   if(value < 0) {
         printf("ERROR: Negative values are invalid (value = %f).\n"
                "...ENDING PROGRAM...\n", value);
         exit(-1);
   }
}
