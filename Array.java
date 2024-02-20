import java.util.*;
public class Array{
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int[] a = new int[4];
        int b=0;
        double avg=0;
		for (int i=0;i<4 ;i++ ) {
			a[i] = sc.nextInt();
			b=b+a[i];
		}
		avg=b/4.0;
			System.out.println(avg);
		

	}
}