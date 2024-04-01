import java.util.Scanner;
class Multiplication{
    int mul;
    public void multi(int x,int y){
        // int mul = x * y;
        // System.out.println("sum is"+mul);
        try{
            int mul = x * y;
            int dx=0;
            for(int i = 1; i < y;i++){
                dx=x*x;
            }
            System.out.println("your multiplication is here"+dx);
        }
        catch(Exception e){
            System.out.println(e.getMessage());
            System.out.println("please enter an integer number");
        }
    }
}
public class Lab8A1 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("enter a number");
        int x = sc.nextInt();
        System.out.println("enter a another number");
        int y = sc.nextInt();
        Multiplication ml = new Multiplication();
        ml.multi(x, y);

    }
}
