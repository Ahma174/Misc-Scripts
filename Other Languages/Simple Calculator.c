#include <stdio.h>

int main() {
 int fir;
 int sec;
 char symb;

 printf("Symbol? \n");
 scanf(" %c", &symb);
 
 printf("First Number? \n");
 scanf("%d", &fir);
 
 printf("Second Number? \n");
 scanf("%d", &sec);
 
 switch(symb) {
   case '+':
    printf("Results: %d", fir + sec);
    break;
   case '-':
    printf("Results: %d", fir - sec);
    break; 
   case '*':
    printf("Results: %d", fir * sec);
    break; 
   case '/':
    printf("Results: %d", fir / sec);
    break;
    
   default:
    printf("Wrong Symbol!");  
  }
 return 0;
}
