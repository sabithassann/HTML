
package javaclass6;

import java.util.Scanner;


public class JavaClass6 {

  
    public static void main(String[] args) {
       
        Scanner sc= new Scanner(System.in);
//        int guessNumber=(int)Math.random()*10;
//        int i=1;
//        int winner=8;
//
//        do{
//            
//            System.out.println("Please enter your guess");
//            int input1=sc.nextInt();
//            if (guessNumber==input1) {
//                
//                System.out.println("you won 10000$");
//                
//                break;
//               
//            }
//            else if(input1==winner){
//             System.out.println("you won 10000$");
//             break;
//            }
//            else{
//                System.out.println("Better Luck next time");
//                
//            }
//            i++;
//            
//        }
//        while(i<=5);
        
        
       int guessNumber=(int) (Math.random()*10);//use () on math.random()*10 for genarate number randon number;
       int i;
       int winner=8;
       
       for(i=1 ;i<=5;i++){
           System.out.println("Please enter your guess number ");
           int input=sc.nextInt();
           if(guessNumber==input){
               System.out.println("You won 10000$");
           }
           else if(input==winner){
               System.out.println("You won 10000$ By Cheating\n");
           }
           else if(input==60){
               System.out.println("You won 10000$ By Cheating\n");
           }
           else if(i>=5){
               System.out.println("your entry is finished");
                       }
               else{
                       System.out.println("Better Luck next time \n");
                       }
           
           }
       }
    
    }
    

