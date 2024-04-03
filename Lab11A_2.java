import java.io.*;

public class Lab11A_2 {
    public static void main(String[] args) {
        if (args.length == 0) {
            System.out.println("Please provide a file or directory path as a command-line argument.");
            return;
        }

        File file = new File(args[0]);

        if (!file.exists()) {
            System.out.println("The provided path does not exist.");
            return;
        }

        if (file.isFile()) {
            System.out.println("The provided path is a file with size: " + file.length() + " bytes.");
        } else if (file.isDirectory()) {
            System.out.println("The provided path is a directory. Here are the names of all files in it:");
            for (File subfile : file.listFiles()) {
                System.out.println(subfile.getName());
            }
        } else {
            System.out.println("The provided path is neither a file nor a directory.");
        }
    }
}