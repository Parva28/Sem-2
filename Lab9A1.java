class Mythread1 extends Thread{
    public void run(){
        while(true){
            System.out.println("Good Morning");
            try{
                sleep(10000);
            }
            catch(Exception e){
                e.printStackTrace();
            }
        }
    }
}

class Mythread2 extends Thread{
    public void run(){
        while(true){
            System.out.println("Good afternoon");
            try{
                sleep(3000);
                
            }
            catch(Exception e){
                e.printStackTrace();
            }
        }
    }
}
public class Lab9A1 {
    public static void main(String[] args) {
      Mythread1 t1 = new Mythread1();
      Mythread2 t2 = new Mythread2();
    
      t1.start();
      t2.start();

      

    }
}
