// making so much calculators
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        
        System.out.println("Symbol? ");
        char symbol = input.next().charAt(0);
        
        System.out.println("First Number? ");
        int first = input.nextInt();
        
        System.out.println("Second Number? ");
        int second = input.nextInt();
        
        if (symbol == '+') {
            System.out.println("Results: " + (first + second));
        }
        
        if (symbol == '-') {
            System.out.println("Results: " + (first - second));
        }
        
        if (symbol == '*') {
            System.out.println("Results: " + (first * second));
        }
        
        if (symbol == '/') {
            System.out.println("Results: " + (first / second));
        }
    }
    }
