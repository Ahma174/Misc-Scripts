// why am I making so many damn calculators?
#include <iostream>

using namespace std;

int main()
{
  float fir;
  float sec;
  char sym;
   
  cout << "Symbol? ";
   cin >> sym;
   
  cout << "First Number? ";
  cin >> fir;
  
  cout << "Second Number? ";
  cin >> sec;
  
  if (sym == '+')
   cout << fir + sec;
   
  if (sym == '-')
   cout << fir - sec;
   
  if (sym == '*')
   cout << fir * sec;
   
  if (sym == '/')
   cout << fir / sec;
}
