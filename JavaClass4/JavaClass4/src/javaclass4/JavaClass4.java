
package javaclass4;

import java.util.Scanner;


public class JavaClass4 {

    
    public static void main(String[] args) {
        Scanner sc= new Scanner(System.in);
        
        int number =0;
        number=sc.nextInt();
        int sum=0;
        
//        while(number>0){
//            sum+=number;
////            System.out.println("pls enter a number ");
//            number=sc.nextInt();
//        }
//        System.out.println(sum);

do{
    sum+=number;
    number=sc.nextInt();
}while(number>0);
        System.out.println(sum);
    }
    
}
