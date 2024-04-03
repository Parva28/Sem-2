import java.io.*;
import java.util.Arrays;

class FileWriterThread extends Thread {
    private String filename;
    private String message;

    public FileWriterThread(String filename, String message) {
        this.filename = filename;
        this.message = message;
    }

    @Override
    public void run() {
        try (FileOutputStream fos = new FileOutputStream(filename);
             BufferedOutputStream bos = new BufferedOutputStream(fos)) {

            for (char c : message.toCharArray()) {
                bos.write(c);
                Thread.sleep(10); // sleep for 10 milliseconds
            }
        } catch (IOException e) {
            System.err.println("Error writing to file: " + e.getMessage());
        } catch (InterruptedException e) {
            System.err.println("Thread interrupted: " + e.getMessage());
        }
    }
}

public class Lab11A_3 {
    public static void main(String[] args) throws InterruptedException {
        if (args.length < 2) {
            System.out.println("Please provide at least two command-line arguments: <filename> <message>");
            return;
        }

        String filename = args[0];
        String message = String.join(" ", Arrays.copyOfRange(args, 1, args.length));

        FileWriterThread writer1 = new FileWriterThread(filename, message);
        FileWriterThread writer2 = new FileWriterThread(filename, message);

        writer1.start();
        writer2.start();

        // Wait for both threads to finish
        writer1.join();
        writer2.join();

        System.out.println("Both threads have finished execution.");
    }
}