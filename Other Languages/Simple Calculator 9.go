package main

import "fmt"

func main() {
	fmt.Println("Symbol? ");
	var symb string
	fmt.Scanln(&symb)
	
	fmt.Println("First Number? ");
	var first int
	fmt.Scanln(&first)
	
	fmt.Println("Second Number? ");
	var second int
	fmt.Scanln(&second)
	
	if (symb == "+") {
		fmt.Println("Results: ", first+second)
	}
	
	if (symb == "-") {
		fmt.Println("Results: ", first-second)
	}
	
	if (symb == "*") {
		fmt.Println("Results: ", first*second)
	}
	
	if (symb == "/") {
		fmt.Println("Results: ", first/second)
	}
} p
