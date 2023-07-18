
package pairmatching;

import java.util.Scanner;


public class PairMatching {

    
    public static void main(String[] args) {
        Scanner pair= new Scanner(System.in);
        
       
         String [] male={"Raju","Saju","Vadu","Monu"};
        String [] female={"Mitu","Situ","Ritu","Bithu"};
        System.out.println("Please enter you want to pair");
        String pairing=pair.next();
        
        int i=0;
        while(i<male.length){
            i++;
            if(pairing.equals(male[i])){
               
            System.out.println(male[i]+" pair with "+ female[i]);
            break;
            }
        }
        
    }
    
}
