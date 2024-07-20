package com.itrainu.Basic;

public class WhileFactorial {
	public static void main(String[] args) {
		 int a=1;
		 int b=1;
		 while(a<=5) {
			 b= a*b;
			 a++;
			 
		 }
		 System.out.println("Factorial of 5="+b);
	}

}
