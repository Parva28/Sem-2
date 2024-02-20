import java.util.*;
public class Lab2_3{
	public static void main(String[] args){
   Scanner sc = new Scanner(System.in);
   System.out.println(" ENTER + - * /");
   char s = sc.next().charAt(0);
   int a = sc.nextInt();
   int b = sc.nextInt();
   if(s=='+'){
   	System.out.println(a+b);
   }
   if(s=='-'){
   	System.out.println(a-b);
   }
   if(s=='*'){
   	System.out.println(a*b);
   }
   if(s=='/'){
     while(b==0){
     	System.out.println("pelase eneter valid no.");
     	b = sc.nextInt();
     }
  	System.out.println(a/b);
 
   }

	}
}