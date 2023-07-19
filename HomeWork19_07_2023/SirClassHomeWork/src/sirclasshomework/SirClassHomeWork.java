
package sirclasshomework;

import java.util.Scanner;


public class SirClassHomeWork {

   
    public static void main(String[] args) {
        Scanner sc= new Scanner(System.in);
        
        System.out.println("Please enter a decimal number");
        double user=sc.nextDouble();
        int forCents=(int) (user*100); //for user decimal number to cent
        int forDollar= forCents/100; //for find dollar
        int reminingCent= forCents%100;//for remain cent
        int forQuater=reminingCent/25;//for quater 
        int remainQuater=reminingCent%25;//for remains of quater  in this line i made difficult error i type forQuater in remainquater
        int forDime=remainQuater/10;//quater ar vagses ar dime ber korte bolca questions a
        int remainDime=remainQuater%10;//dime ar vagses ber kora holo question a bolce nickels ber korte hobe dime ar vag ses result ar upor
        int fornickels=remainDime/5;//dime ar vagses diye nickels ber kora holo
        int remainNickels= remainDime%5;
        
        int remainsNickelsIsPennies=remainNickels;// 1 nickels=5pennies for pennies
        
        System.out.println("Your input ammount is "+ user);
        System.out.println("     "+forDollar+" Dollar");
        System.out.println("     "+forQuater+" quater");
        System.out.println("     "+forDime+" Dime");
        System.out.println("     "+fornickels+" nickels");
        System.out.println("     "+remainsNickelsIsPennies+" Pennies");
        
        
    }
    
}
