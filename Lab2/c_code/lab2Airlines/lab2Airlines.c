/* // // // // // // // // // // // // // // // // // // // // // // // //

Author: Ian Gilman, David Dolengewicz
Title: Flight from Seattle To London

Abstract: This program calculates the velocity of an aircraft traveling from Seattle
to London as a function of ideal flight time, then also calculates and displays
 the flight time given an 89.6 mph headwind

Introduction: No negative inputs or
   results are allowed.

Inputs:  (float) flight time - limited to non-negative float-sized numbers:
                  ideal flight time from London to Seattle.

Outputs: (float) velocity - limited to non-negative float-sized numbers,
                  speed of the aircraft given flight time
         (float) headwind time - limited to non-negative float-sized numbers,

                  time of the flight in the case of an 89.6 mph headwind

Major Functions:
                get_flight_time - prompts the user for the flight time.
                calculate_velocity - takes salary (float), array of all taxes
                  (float array), and number of taxes (int), and returns net
                  income (float)
                calculate_headwind_time - takes the flight time (float) and calculates
                  a new flight time assuming a HEADWIND of default value 89.6 mph
                display_headwind_time - takes the calculated headwind time and outputs it for
                  the user.


*/ // // // // // // // // // // // // // // // // // // // // // // // //



#include<stdlib.h>
#include<stdio.h>
#include<string.h>


// Program constants
#define DISTANCE 4791.0 //distance from Seattle to London
#define HEADWIND 89.6  // estimated headwind

// Function declarations
float get_flight_time();
float calculate_velocity(float flight_time);
float calculate_headwind_time(float vel);
void display_velocity(float vel);
void display_headwind_time(float headwind_time);
void negative_float_check(float value);


/*
   Main function, runs the flight calculator.
*/
int main() {
   // UI strings
   const char GREET[] = "Welcome to our flight velocity and flight time calculator."
                        "\nLet's get started!\n";


   const char END[] = "Thank you for using the flight time calculator, adios.";


   // Local variables
   float flight_time;
   float velocity;
   float headwind_time;


   ////////////
   // UI Start
   printf("%s", GREET);
   getchar(); // Press any key

   // Get calculator variable values from user
   flight_time = get_flight_time();
   //calculate the airspeed
   velocity = calculate_velocity(flight_time);
   //display airspeed
   display_velocity(velocity);
   //calculate the time given HEADWIND
   headwind_time = calculate_headwind_time(velocity);
   //display the new headwind time
   display_headwind_time(headwind_time);



   return 0;
}


/*
   Prompt user for the float value corresponding to flight_time and then
   returns that float
*/
float get_flight_time() {
    // user_value note: negative default value for error-checking
   float user_value = -1.0; // float corresponding to float_name

   // user prompt
   do {
      printf("Please enter the flight time from London to Seattle in hours:\n");
      scanf("%f", &user_value);
      if(user_value <= 0)
         printf("Invalid time.\n");

   } while (user_value <= 0);
   // error if user_value is negative
   negative_float_check(user_value);

   return user_value;
}

/*
    Returns the velocity in miles per hour based on the given flight_time and
    the DISTANCE constant.

*/
float calculate_velocity(float flight_time)
{
    float velocity;
    negative_float_check(flight_time);
    velocity = DISTANCE/flight_time;
    negative_float_check(velocity);
    return velocity;
}

/*
    Takes an ideal flight velocity vel. Returns the new flight time given a
    headwind of speed HEADWIND (mph) and a flight distance of distance DISTANCE.
*/
float calculate_headwind_time(float vel)
{
    float new_vel;
    negative_float_check(vel);
    new_vel = vel - HEADWIND;
    negative_float_check(new_vel);
    return DISTANCE/new_vel;

}

/*
    Displays the given velocity.
*/
void display_velocity(float vel)
{
    printf("Your average airspeed is %.2f mph.\n", vel);

}

/*
    Displays the given headwind time.
*/
void display_headwind_time(float headwind_time)
{
    printf("Your flight time with additional headwind is %.2f hours.\n", headwind_time);

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
