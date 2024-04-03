import java.io.*;

public class Lab10A_2 {
    public static void main(String[] args) {
        String word1 = "word1";
        String word2 = "word2";
        String file1 = "input.txt";
        String file2 = "output.txt";
        
        try (BufferedReader reader = new BufferedReader(new FileReader(file1));
             BufferedWriter writer = new BufferedWriter(new FileWriter(file2))) {
            int count = 0;
            String line;
            while ((line = reader.readLine())!= null) {
                String newLine = line.replaceAll(word1, word2);
                count += line.length() - newLine.length();
                writer.write(newLine);
                writer.newLine();
            }
            System.out.println("Replacements made: " + count);
        } catch (IOException e) {
            System.out.println("Error: " + e.getMessage());
        }
    }
}