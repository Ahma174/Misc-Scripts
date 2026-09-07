using System;

class Program
{
    static void Main()
    {
        
        Console.WriteLine("Symbol? ");
        char symbol = Console.ReadLine()[0];
        
        Console.WriteLine("First Number? ");
        int first = int.Parse(Console.ReadLine());
        
        Console.WriteLine("Second Number? ");
        int second = int.Parse(Console.ReadLine());
        
        if (symbol == '+') {
            Console.WriteLine("Results: " + (first + second));
        }
        
        if (symbol == '-') {
            Console.WriteLine("Results: " + (first - second));
        }
        
        if (symbol == '*') {
            Console.WriteLine("Results: " + (first * second));
        }
        
        if (symbol == '/') {
            Console.WriteLine("Results: " + (first / second));
        }
    }
}
