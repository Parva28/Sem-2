import java.util.*;
public class Marks{
	public static void main(String[] args){
    Scanner sc = new Scanner(System.in);
      int phy = sc.nextInt();
     int math  = sc.nextInt();
     int chem  = sc.nextInt();
     int eng = sc.nextInt();
     int wd = sc.nextInt();
     double total ; 
    total = (phy + math + chem + eng + wd)/5 ;
    System.out.println(total);
     if(total>=60){

     System.out.println("first division");

     }
      else if(total>50){

     System.out.println("second division");

     }
     else if(total>=40){

     System.out.println("third division");

     }
     else if(total<40){

     System.out.println("fail");

     }
     


	}

}