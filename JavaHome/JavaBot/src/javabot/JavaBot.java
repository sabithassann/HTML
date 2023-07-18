
package javabot;

import java.util.Scanner;

public class JavaBot {

  
    public static void main(String[] args) {
        
        Scanner sc=new Scanner(System.in);
        
        
//        int number=sc.nextInt();
////        int number =4;
//        int sum=0;
//        
//        while(sum<number){
//            
//            System.out.println(number);
//            sum+=number;
//            number++;
//            
//            
//                    
//        }
//        System.out.println(sum);




//int sum=0;
//
////int num=0;
//while(true){
//    System.out.print("Please enter number: ");
//    int number=sc.nextInt();
//
//    if(number<0){
//        break;
//    }
//    else{
//    sum+=number;
//    
//    }
//}
//        System.out.println("The Total is: "+ sum);         



int sum = 0;
        
        while (true) {
            System.out.print("Please enter number: ");
            if (sc.hasNextInt()) {
                int number = sc.nextInt();
                if (number < 0) {
                    break; // Break the loop if the input is a negative number
                }
                sum += number; // Add the non-negative number to the sum
            }else if(sc.hasNext()){
                String input = sc.next(); 
//               break;
                if(input.equals("stop") || input.equals("stop_jau") ||input.equals("thamen_hasanvai")){
                    break;
                }


                } 
          
            }
        
        
        System.out.println("The final sum is: " + sum);
    }
    
}
