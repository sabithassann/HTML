
package javaclass5;

import java.util.Scanner;


public class JavaClass5 {

  
    public static void main(String[] args) {
        Scanner sc= new Scanner(System.in);
        System.out.println("Enter a number between 0 and 99999");
        
        int number=sc.nextInt();
//        int first =number/100;
//        int first1=first%100;
//        System.out.println(first1);
//        int second=first1/10;
//        int second2=first1%10;
//        System.out.println(second2);
//        int third=number/1;
//        int third3=number%1;
//        System.out.println(third3);
////        int third=;
//
////int first =number%100;
        int extra = number / 1000;
        int extra1 = number % 1000;

        int first = extra1 / 100;
        int first1 = extra1 % 100;
//        System.out.println(first);
//        System.out.println(first1);

        int second = first1 / 10;
        int second2 = first1 % 10;
//        System.out.println(second);
//        System.out.println(second2);

        int sum = extra + first + second + second2;

        System.out.println("The sum is " + sum);
        




        
        
        
    }
    
}
