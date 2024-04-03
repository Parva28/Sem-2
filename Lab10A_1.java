import java.io.*;

public class Lab10A_1 {
    public static void main(String[] args) {
        File file = new File("input.txt");
        if (!file.exists()) {
            System.out.println("File not found");
            return;
        }
        
        try (BufferedReader reader = new BufferedReader(new FileReader(file))) {
            int chars = 0, words = 0, lines = 0;
            String line;
            while ((line = reader.readLine())!= null) {
                lines++;
                int spaceCount = 1;
                for (char c : line.toCharArray()) {
                    if (c!= ' ') {
                        if (spaceCount == 1) {
                            words++;
                        }
                        spaceCount = 0;
                    } else {
                        spaceCount = 1;
                    }
                    chars++;
                }
                if (line.length() > 0) {
                    words++;
                }
            }
            System.out.println("Characters: " + chars);
            System.out.println("Words: " + words);
            System.out.println("Lines: " + lines);
        } catch (IOException e) {
            System.out.println("Error reading file: " + e.getMessage());
        }
    }
}
