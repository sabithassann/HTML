
package javaclass10;

import java.util.Scanner;


public class JavaClass10 {

   
    public static void main(String[] args) {
        
//        Scanner sc=new Scanner(System.in);
//        System.out.println("pls enter your number");
//        int input1=sc.nextInt();
//        
//        int n1=0,n2=1,n3;
//        System.out.println(n1+"\n"+n2); 
//        for(int i=2;i<input1;i++){
//            
//            n3=n1+n2;
//            System.out.println(n3);
//            n1=n2;
//            n2=n3;
//           
//        }


//     int max=0,min=9999999;
//     int input=0;int avg=input1;
//     while(input1>0){
//         System.out.println("pls enter number again");
//         input=sc.nextInt();
//         if(max<input){
//             max=input;
//         }
//         if(min>input){
//             min=input;
//         }
////         input1--;
//     }
////        System.out.println("Average "+ sum);
//        System.out.println("maximun number is "+max);
//         
//        System.out.println("minimum number is "+min);


//          int max = Integer.MIN_VALUE; // Initialize max to the smallest possible integer
//        int min = Integer.MAX_VALUE; // Initialize min to the largest possible integer
//        int input;
//        int sum=0;
//        int input3=input1;
//
//        while (input1 > 0) {
//            System.out.println("Please enter number again:");
//            input = sc.nextInt();
//            sum+=input;
//            if (max < input) {
//                max = input;
//            }
//            if (min > input) {
//                min = input;
//            }
//            input1--;
//        }
//        System.out.println("sum is "+ sum);
//        System.out.println("input is "+ input3);
//        double average=(double) sum/input3;
//        System.out.println("Average is "+ average);
//        System.out.println("Maximum number is " + max);
//        System.out.println("Minimum number is " + min);



//        int fac=1;
//        for(int i=input1;i>=1;i--){
//           
//            fac*=i; 
//            
//        }
//
////      for(int i=1;i<=input1;i++){
////          fac*=i;
////      }
//        System.out.println(fac);



     
      
      Scanner sc=new Scanner(System.in);
      int startRange=sc.nextInt();
      int endRange=sc.nextInt();
//      int count=0;
      
      for(int i=startRange;i<=endRange;i++){
          
            int count=0;
          
          for(int j=1;j<=i;j++){
              if(i%j==0){
               count+=1;
//                  System.out.println("count is "+count);


 

//                  System.out.println(j);
              }
          }
          if(count==2){
              System.out.println(i+" is a prime number");

          }
          else{
              System.out.println(i+" is not prime");
          }
      }








    }
    
}
