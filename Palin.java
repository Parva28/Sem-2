import java.util.*;
public class Palin{
	public static void main(String[] args){
   Scanner sc = new Scanner(System.in);
   System.out.println("enter no.");
   int a = sc.nextInt();

   int i=0,rem,temp=a;
   while(a!=0){
    rem=a%10;
    i=i*10+rem;
    a=a/10;
   }
   if(i==temp){
   	System.out.println("no. is palindrome");
   }
   else{
   	System.out.println("no. is not palindrome");
   }


	}
}