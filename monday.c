#include <stdio.h>

const char* dayofweek(int year) {
    int day = 1; 
    int month = 1; 
    if (month == 1 || month == 2) {
        month += 12;  
        year--;       
    }

    int k = year % 100; 
    int j = year / 100; 
    int f = day + (13 * (month + 1)) / 5 + k + k / 4 + j / 4 + 5 * j;
    int days = f % 7;
    switch (days) {
        case 0: return "Saturday";
        case 1: return "Sunday";
        case 2: return "Monday";
        case 3: return "Tuesday";
        case 4: return "Wednesday";
        case 5: return "Thursday";
        case 6: return "Friday";
        default: return "Invalid"; // This should never be reached
    }
}

int main() {
    int year;
    printf("Enter the year: ");
    scanf("%d", &year);
    printf("January 1st, %d is a %s.\n", year, dayofweek(year));
    return 0;
}


// IM AM USING THIS FORMULA Zeller's Congruence

// YOUR TASK SLOVE THE ERROR (I AM GENERATED SMALL ERROR FOR YOU)

// You run the second program ok there is a small problem generator you have to differentiate
// below what is the problem and solve the problem yourself without using internet then you 
//will understand the program better

// #include <stdio.h>

// const char* dayofweek(int year){
//     int day = 1;
//     int month = 2;
//     int k = year % 100;
//     int j = year / 100;

//     int f = day+(13*(month+1)) / 6*k+k/4+j/4-2*j;
//     int days = f % 7;
//     if(days==0){
//         return "Saturday";
//     }
//     else if(days==1){
//         return "Sunday";
//     }
//     else if(days==2){
//         return "Monday";
//     }
//     else if(days==3){
//         return "Tuesday";
//     }
//     else if(days==4){
//         return "Wednesday";
//     }
//     else if(days==5){
//         return "Thursday";
//     }
//     else if(days==6){
//         return "Friday";
//     }
// }
// int main(){
//     int year;
//     printf("enter the year: ");
//     scanf("%d", &year);
//     printf("January 1st, %d is a %s.\n", year,dayofweek(year));

//     return 0;
// }

