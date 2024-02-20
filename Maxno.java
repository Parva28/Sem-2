import java.util.*;
public class Maxno{
	public static void main(String[] args){
		Scanner sc = new Scanner(System.in);
		System.out.println("enter no.");
		int a = sc.nextInt();
		System.out.println("enter no.");
		int b = sc.nextInt();
		System.out.println("enter no.");
		int c = sc.nextInt();
		if(a>b){
			if(a>c){
				System.out.println("greater"+a);
			}
			else {
                System.out.println("greater"+c);  
			}
		}
		else{
			if(b>c){
				System.out.println("greater"+b);
			}
			else {
                System.out.println("greater"+c);  
			}
		}
	}
}