class Mythread1 extends Thread{
    int i;
    public void run(){
        for( i=1;i<=20;i++){
            if(i%2==1){
                System.out.println("the odd number is "+i);
            }
            try{
                Thread.sleep(1000);
            }
            catch(InterruptedException e){
                e.printStackTrace();
            }
        }
        
    }
}
class Mythread2 extends Thread{
    int i;
    public void run(){
        for( i=1;i<=20;i++){
            if(i%2==0){
                System.out.println("the even number is "+i);
            }
            try{
                Thread.sleep(1000);
            }
            catch(InterruptedException e){
                e.printStackTrace();
            }
        }
    }
}
public class Lab9A2 {
    public static void main(String[] args) {
        Mythread1 O1 = new Mythread1();
        Mythread2 E1 = new Mythread2();
        O1.start();
        E1.start();
    }
}
