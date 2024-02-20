import java.util.*;
public class Prime{
	public static void main(String[] args){
		Scanner sc = new Scanner(System.in);
		System.out.println("enter no.");
		int a = sc.nextInt();
		int i,count=0,n=a;
		for(i=1;i<n;i++){
           if(a%i==0){
           	count++;
           }

		}
		if(count==1){
			System.out.println(" no is prime");
		}
		else{
			System.out.println("no. is not prime");
		}

	}
}