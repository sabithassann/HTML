
package homework19_07_2023;

import java.util.Scanner;


public class HomeWork19_07_2023 {

    
    public static void main(String[] args) {
        Scanner sc= new Scanner(System.in);
        
        System.out.println("Please enter annual Interest Rate");
        double interest=sc.nextDouble();
        System.out.println("Please enter the number of Years");
        double yearsInterest=sc.nextDouble();
        System.out.println("Please enter loan Ammount");
        double loan=sc.nextDouble();
        
        double interestDec=interest/100;
        double monthlyInterestDec=interestDec/12;
        double yearsInterestDec=monthlyInterestDec*12;
        
        double monthlyPayment=(monthlyInterestDec*loan);
        double yearsPayment=yearsInterest*(monthlyPayment*12);
        
        
        System.out.println("Monthly interest rate in decimal is "+ monthlyInterestDec);
        System.out.println("Annual interest rate in decimal is "+ yearsInterestDec);
        
        System.out.println("Total Monthly Payment is "+ monthlyPayment);
        System.out.println("Total year payment is "+ yearsPayment);
        
    }
    
}
