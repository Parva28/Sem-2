import java.io.*;
import java.util.ArrayList;

class Student {
    private int id;
    private String name;
    private double gpa;

    public Student(int id, String name, double gpa) {
        this.id = id;
        this.name = name;
        this.gpa = gpa;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public double getGpa() {
        return gpa;
    }

    public String toString() {
        return "Student [id=" + id + ", name=" + name + ", gpa=" + gpa + "]";
    }
}

public class Lab11 {

    private static final String FILENAME = "students.txt";

    public static void main(String[] args) {

        ArrayList<Student> students = new ArrayList<>();

        try (BufferedReader reader = new BufferedReader(new FileReader(FILENAME))) {

            String line;
            while ((line = reader.readLine())!= null) {
                String[] parts = line.split(",");
                int id = Integer.parseInt(parts[0]);
                String name = parts[1];
                double gpa = Double.parseDouble(parts[2]);

                Student student = new Student(id, name, gpa);
                students.add(student);
            }

            System.out.println("Students:");
            for (Student student : students) {
                System.out.println(student);
            }

        } catch (IOException e) {
            System.out.println("Error reading file: " + e.getMessage());
        }
    }

    public static void writeStudents(ArrayList<Student> students) {

        try (BufferedWriter writer = new BufferedWriter(new FileWriter(FILENAME))) {

            for (Student student : students) {
                writer.write(student.getId() + "," + student.getName() + "," + student.getGpa());
                writer.newLine();
            }

        } catch (IOException e) {
            System.out.println("Error writing to file: " + e.getMessage());
        }
    }
}