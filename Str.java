import java.util.*;
public class Str{
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		String s = sc.nextLine();
		int b=s.length();
		int c=b/2;
		for (int i=c;i<b;i++) {
			System.out.print(s.charAt(i));
		}
	}
}