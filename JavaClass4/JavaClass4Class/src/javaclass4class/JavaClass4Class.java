
package javaclass4class;

import java.util.Scanner;


public class JavaClass4Class {

   
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        
//        int num=10;
//        System.out.println(num++);
//        System.out.println(--num);
//        System.out.println(++num);
//        System.out.println(num--);

        System.out.println("Pls enter a Amount");
        double check =sc.nextDouble();
        System.out.println("pls enter tax");
        double tax=sc.nextDouble();
        
        double taxextra=tax/100;
        
        double tax1=check*taxextra;
        System.out.println("The sale tax is "+ (int)+tax+"%"+" Total with tax is "+(int)(tax1+check));
    }
    
}
