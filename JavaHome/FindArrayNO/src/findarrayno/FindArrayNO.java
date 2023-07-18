
package findarrayno;

import java.util.Scanner;


public class FindArrayNO {

   
    public static void main(String[] args) {
        Scanner find=new Scanner(System.in);
        
        
       System.out.println("Please enter Data");
       String []cars={"Volvo", "BMW", "Ford", "Mazda"};
       String check=find.next();
       
       int i=0;
       while(i<cars.length){
           i++;
           if(check.equals(cars[i])){
           System.out.println(check+" no array is "+i);
           break;
           }
           else{
               System.out.println("Please enter a Valid Data");
               break;
           }
       }
    }
    
}
