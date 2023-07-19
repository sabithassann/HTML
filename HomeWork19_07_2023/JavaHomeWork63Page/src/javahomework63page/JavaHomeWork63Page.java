
package javahomework63page;

import java.util.Scanner;


public class JavaHomeWork63Page {

    
    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
        
//        System.out.println("Please Enter the ammount");
//        double user=sc.nextDouble();
//        
//        double todollar=user;
//        System.out.println("Dollar "+ (int)todollar);
//        double toCent=user*100;
//        System.out.println("to cent "+(int)toCent);//to convert in cent
//        
//        double remainCent=toCent%100;
//        System.out.println("Remain Cents "+(int)remainCent);//for remain cent
//        
//        double quater=remainCent/25;
//        System.out.println("Quater "+(int) quater); //for quater
//        double obtainQuaterRemaind=quater%25;
//        System.out.println("Quater remaind "+(int)+obtainQuaterRemaind);
//        
//        double dimes =obtainQuaterRemaind/10;
//        System.out.println("dimes "+(int)dimes);  //for dimes
//        double obtainDimeremaind=dimes%10;
//        System.out.println("Dimes remainder "+obtainDimeremaind);
//        
//        double nickles=obtainDimeremaind/5;
//        System.out.println("nickles "+(int)nickles); //for nickles
//        double obtainNicklesremaind=nickles%5;
//        System.out.println("Nickles Remaind"+(int)obtainNicklesremaind);
//        
//        System.out.println("The remainng penneis"+ (int)obtainNicklesremaind);
        
        
         System.out.println("Please Enter the ammount");
        double user=sc.nextDouble();
        
        double toCent=user*100;
        System.out.println("to cent "+(int)toCent);//to convert in cent
        
        double todollar=user;
        System.out.println("Dollar "+ (int)todollar);//to convert in dollar
        
        
        double remainCent=toCent%100;
        System.out.println("Remain Cents "+(int)remainCent);//for remain cent
        
        double quater=remainCent/25;
        System.out.println("Quater "+(int) quater); //for quater
        
        double quaterRemain=quater%25; //for quater remainder
        
        double dimes =quaterRemain/10;
        System.out.println("dimes "+(int)dimes);  //for dimes
        
        double dimesRemain=dimes%10; ///for dimes remainder
        
        double nickles=dimesRemain/5;
        System.out.println("nickles "+(int)nickles); //for nickles
        
        double nicklesremain=nickles%5;
        
        System.out.println("The remainng penneis"+ (int)nicklesremain);
        
    }
    
}
