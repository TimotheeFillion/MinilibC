/*
** EPITECH PROJECT, 2020
** Untitled (Workspace)
** File description:
** test
*/

#include <stdio.h>
#include <stdlib.h>

int main() 
{ 
    // Take any two strings 
    char str1[10] = "aksh"; 
    char str2[10] = "akash"; 
  
    // Compare strings using strncmp() 
    int result = strncmp(str1, str2, 4); 
  
    if (result == 0) { 
        // num is the 3rd parameter of strncmp() function 
        printf("str1 is equal to str2 upto num characters\n"); 
    } 
    else if (result > 0) 
        printf("str1 is greater than str2\n"); 
    else
        printf("str2 is greater than str1\n"); 
  
    printf("Value returned by strncmp() is: %d", result); 
  
    return 0; 
} 