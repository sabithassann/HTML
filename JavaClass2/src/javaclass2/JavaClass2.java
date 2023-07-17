
package javaclass2;

//Test Scanner

import java.util.Scanner;

public class JavaClass2 {

    
    public static void main(String[] args) {
//        Scanner sc=new Scanner(System.in);
//        
////        String grettings;
////        System.out.println("Please enter grettings: ");
////        grettings=sc.nextLine();
////        
////        System.out.println(grettings+" java");
//
//
////          int n1, n2;
////          System.out.println("Pls enter number 1");          
////          n1 =sc.nextInt();
////          
////          System.out.println("pls enter number 2");       
////          n2= sc.nextInt();
////          
////          int result=n1+n2;
////          System.out.println("Total "+ result);
//////          System.out.println("Total "+ (n1+n2));
//
//
//
//
////          int number, sum=0;
////           for(int i=1; i<=10; i++){
////               System.out.println("pls enter number "+i);
////               number =sc.nextInt();
////               sum +=number;
////               
////    }
////           System.out.println("Total is "+ sum);


        Scanner input =new Scanner(System.in);
        System.out.println("Enter a number for radius: ");
        double radius =input.nextDouble(); //user input   //double is just a data type
        
        double area =radius * radius * 3.14159; //calculate the area  //in this code double is basically means a data type it cannot double the area
        
        System.out.println("The area for the circle of radius "+ radius+" is "+area);
        
  }
    
}
