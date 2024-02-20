import java.util.*;
public class Pattern{
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		String s = "stream";
		for(int i=0;i<s.length()-1;i++){
			for (int j=0;j<i ;j++ ) {
				System.out.print(s.charAt(j));
			}
			System.out.println();

		}
	}
}