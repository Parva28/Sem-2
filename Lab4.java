import java.util.*;
public class Lab4{
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.println("enter your string");
		String s = sc.nextLine();
		int i=0,n=s.length(),vow=0,con=0;
		while(i<n){
		if (s.charAt(i)=='a'||s.charAt(i)=='e'||s.charAt(i)=='i'||s.charAt(i)=='o'||s.charAt(i)=='u') {
			vow++;
			i++;
		}
		else{
			con++;
			i++;
		}
	}
	System.out.println(vow);
	System.out.println(con);

	}
}