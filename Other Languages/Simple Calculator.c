#include <stdio.h>

int main() {
int f;
int s;
char sym;

printf("Symbol? \n");
scanf(" %c", &sym);

printf("First Number? \n");
scanf("%d", &f);

printf("Second Number? \n");
scanf("%d", &s);
  
  if (sym == '+') {
    printf("Result: %d", f + s);
  }
  
  if (sym == '*') {
    printf("Result: %d", f * s);
  }
  
  if (sym == '-') {
    printf("Result: %d", f - s);
  }
  
  if (sym == '/') {
    printf("Result: %d", f / s);
  }
 return 0; 
}
