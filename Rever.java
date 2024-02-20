import java.util.*;
public class Rever{
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int[] arr = new int[4];
		for ( int i=0;i<4 ;i++ ) {
			arr[i] = sc.nextInt();
		}
		for (int i=3;i>=0 ;i-- ) {
			System.out.println(arr[i]);
		}
	}
}