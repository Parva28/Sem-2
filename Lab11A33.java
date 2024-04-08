import java.io.File;

public class Lab11A33 {
   public static void main(String[] args) {
    String path = args[0];
    File f_d = new File(path);
    if(f_d.isFile()){
        System.out.println("File size"+f_d.length()+ "bytes");
    }else if(f_d.isDirectory()){
        System.out.println("Listing files in directory: "+f_d.getAbsolutePath());
        File f[] = f_d.listFiles();
        if(f!=null){
            for(File file : f){
                if(file.isFile()){
                    System.out.println(file.getName());
                }
            }
        }
        else{
            System.err.println("no file found in this directory");
        }
   } else{
    System.out.println("not a valid file or directory");
   }
}
}
