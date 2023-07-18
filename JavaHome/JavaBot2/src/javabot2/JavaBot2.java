
package javabot2;

import java.util.Scanner;


public class JavaBot2 {

    
    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
        
        System.out.println("Enter disese name");
        if(sc.hasNext()){
            String disease =sc.next();
            if(disease.equals("dengue")){
                System.out.println("Dengue (break-bone fever) is a viral infection that spreads from mosquitoes to people.\nIt is more common in tropical and subtropical climates.");
            }
            if(disease.equals("nipah")){
                System.out.println("Nipah virus infection has turned out to be the deadliest among all communicable diseases in \nBangladesh in terms of mortality rate, with 71% of the 327 people who had contracted the virus in the last 22 years dying from the disease, says the Institute of Epidemiology, Disease Control, and Research.");
            }
            if(disease.equals("corona")){
                System.out.println("Coronaviruses are a type of virus. There are many different kinds, and some cause disease.\n A coronavirus identified in 2019, SARS-CoV-2, has caused a pandemic of respiratory illness, called COVID-19.");
            }
            
            else{
                System.out.println("Please enter a Valid Disease name \nthat in database ");
            }
        }
        
    }
    
}
