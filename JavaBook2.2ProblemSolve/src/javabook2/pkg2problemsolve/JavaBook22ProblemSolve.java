
package javabook2.pkg2problemsolve;

import java.util.Scanner;


public class JavaBook22ProblemSolve {

    
    public static void main(String[] args) {
        Scanner sc= new Scanner(System.in);
        
//        Question 2.1
//        System.out.print("Enter a degree in Celsius: ");
//        int enterCelsius=sc.nextInt();
//        double resultFaherhit=(double)enterCelsius*9/5 +32;
//        
//        System.out.println(enterCelsius+" Celsius is "+resultFaherhit+" Fahrenheit");


////        Question 2.2
//          System.out.println("Enter the radius and length of a cylinder: ");
//          double input=sc.nextDouble();
//          double input2=sc.nextDouble();
//          double area= input*input*Math.PI;
//          double volume= area*input2;
//          
//          System.out.println("The area is "+ area);
//          System.out.println("The volume is "+ volume);
          
          
////        Question 2.3
//          
//
//           System.out.println("Enter a value for feet: ");
//           double input=sc.nextDouble();
//           final double formula =0.305;
//           double meter=input*formula;
//           
//           System.out.println(input+ " feet is "+meter+" meters");


////           Question 2.4
//             
//
//             System.out.print("Enter a number in pounds: ");
//             double input =sc.nextDouble();
//             final double formula=0.454;
//             double kiloGrams=input*formula;
//             
//             System.out.println(input+" pounds is "+ kiloGrams+" kilograms");
             
             
////            Question 2.5
//
//              
//             System.out.print("Enter the subtotal and gratuity rate: ");
//             double input=sc.nextDouble();
//             double forPerent=sc.nextDouble();
//             
//            double convert= forPerent*0.10;
//            double total=input+convert;
//            
//            System.out.println("The gratuity is $"+ convert+" and total is $"+total);



//            Question 2.6


//              System.out.println("Enter a number between 0 and 1000: ");
//              
//              int input=sc.nextInt();
//              
//              int first=input/100;
//              int first1=input%100;
//              int second=first1/10;
//              int second1=first1%10;
//              
////            int sum=first+second+second1;
//              
//              System.out.println("The sum of the digits is "+(first+second+second1));
//              
////              System.out.println(first);
//////            System.out.println(first1);
////              System.out.println(second);
////              System.out.println(second1);



            
////              Question 2.7     
//
//                
//               System.out.print("Enter the number of minutes: ");
//               int input =sc.nextInt();
//               
//               int hour=input/60;
//               int days=hour/24;
//               int year=days/365;
//               
//               int days1=days%365;
////             int hours1=hour%24;
//
//
//               System.out.println(input+" minutes is approximately "+ year+" years and "+ days1+" days");
////               
////               System.out.println("hour "+hour);
////               System.out.println("days "+days);
////               System.out.println("year "+year);
////               System.out.println("daysramainder "+ days1);
////               System.out.println("hoursmodular "+hours1);


////                Questions 2.8
//
//
//                System.out.println("Enter the time zone offset to GMT: ");
//                int input =sc.nextInt();
//                
//                long totalMinlisec= System.currentTimeMillis();
//                System.out.println(totalMinlisec);
//                
//                long totalSeconds=totalMinlisec/1000;
//                System.out.println("totalseconds "+ totalSeconds);
//                
//                long currentSecond=totalSeconds%60;
//                System.out.println("currentSecond "+currentSecond);
//                
//                long totalMinutes=totalSeconds/60;
//                System.out.println("totalMinutes "+ totalMinutes);
//                
//                long currentMinutes =totalMinutes%60;
//                System.out.println("currentMinutes "+ currentMinutes);
//                
//                long totalHour=totalMinutes/60;
//                System.out.println("totalHour "+ totalHour);
//                
//                long currentHour=totalHour%24;
//                long currentHour1=currentHour+input;
//                
//                
//                System.out.println("Current time is "+ currentHour1+":"+ currentMinutes+":"+currentSecond);



////                 Question 2.9
//
//                   
//                   System.out.print("Enter v0, v1 and t: ");
//                   double enterV0 =sc.nextDouble();
//                   double enterV1=sc.nextDouble();
//                   double enterT=sc.nextDouble();
//                   
//                   double formulaA=(enterV1-enterV0)/enterT;
//                   
//                   System.out.println("The average acceleration is "+ formulaA);



////                   Question 2.10
//
//                    System.out.print("Enter the amount of water in kilograms: ");
//                    double amountOfWater=sc.nextDouble();
//                    System.out.print("Enter the initial temperature: ");
//                    double initialTemperature=sc.nextDouble();
//                    System.out.print("Enter the final temperature: ");
//                    double finalTemperature=sc.nextDouble();
//                    
//                    double formula=amountOfWater*(finalTemperature-initialTemperature)*4184;
//                    
//                    System.out.println("The energy needed is " +formula);


//                 Question 2.11




        System.out.print("Enter the number of years: ");
        int input = sc.nextInt();

        int fixed = 312032486;
        int birth = 1314000 / 7;
        int death = 1314000 / 13;
        int immigrant = 1314000 / 45;

        int calculate = (birth + immigrant) - death;
        int resultFinal = 312032486 + calculate * input;

        System.out.print("The population in " + input + "years is " + resultFinal);
                            
                    
                     



 

                     
                     
                     
                     


                    
                   

                
               
             
             
             
             
             
             
          
          
    }
    
}
