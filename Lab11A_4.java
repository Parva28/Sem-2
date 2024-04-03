import java.io.*;
import java.util.Scanner;

public class Lab11A_4 {
    private static final String STUDENT_FILE = "students.dat";

    public static void main(String[] args) {
        // Read students from file
        Student[] students = readStudents();
        printStudents(students);

        // Add a student
        System.out.print("Enter student ID, name, and grade separated by spaces: ");
        Student newStudent = readStudent();
        students = addStudent(students, newStudent);
        printStudents(students);

        // Update a student
        System.out.print("Enter student ID to update: ");
        int id = Integer.parseInt(sc.nextLine());
        System.out.print("Enter new name and grade separated by spaces: ");
        Student updatedStudent = readStudent();
        students = updateStudent(students, id, updatedStudent);
        printStudents(students);

        // Delete a student
        System.out.print("Enter student ID to remove: ");
        id = Integer.parseInt(sc.nextLine());
        students = deleteStudent(students, id);
        printStudents(students);

        // Write students to file
        writeStudents(students);
    }

    private static Student[] readStudents() {
        Student[] students = null;
        try (DataInputStream dis = new DataInputStream(new FileInputStream(STUDENT_FILE))) {
            int numStudents = dis.readInt();
            students = new Student[numStudents];
            for (int i = 0; i < numStudents; i++) {
                int id = dis.readInt();
                String name = dis.readUTF();
                int grade = dis.readInt();
                students[i] = new Student(id, name, grade);
            }
        } catch (IOException e) {
            System.err.println("Error reading students from file: " + e.getMessage());
        }
        if (students == null) {
            students = new Student[0];
        }
        return students;
    }

    private static void writeStudents(Student[] students) {
        try (DataOutputStream dos = new DataOutputStream(new FileOutputStream(STUDENT_FILE))) {
            dos.writeInt(students.length);
            for (Student student : students) {
                dos.writeInt(student.getId());
                dos.writeUTF(student.getName());
                dos.writeInt(student.getGrade());
            }
        } catch (IOException e) {
            System.err.println("Error writing students to file: " + e.getMessage());
        }
    }

    private static void printStudents(Student[] students) {
        System.out.println("Students:");
        for (Student student : students) {
            System.out.println(student);
        }
    }

    private static Student readStudent() {
        Scanner sc = new Scanner(System.in);
        int id = sc.nextInt();
        sc.next(); // skip newline
        String name = sc.nextLine();
        int grade = sc.nextInt();
        return new Student(id, name, grade);
    }

    private static Student[] addStudent(Student[] students, Student newStudent) {
        Student[] newStudents = new Student[students.length + 1];
        System.arraycopy(students, 0, newStudents, 0, students.length);
        newStudents[students.length] = newStudent;
        return newStudents;
    }

    private static Student[] updateStudent(Student[] students, int id, Student updatedStudent) {
        for (int i = 0; i < students.length; i++) {
            if (students[i].getId() == id) {
                students[i] = updatedStudent;
                break;
            }
        }
        return students;
    }

    private static Student[] deleteStudent(Student[] students, int id) {
        for (int i = 0; i < students.length; i++) {
            if (students[i].getId() == id) {
                Student[] newStudents = new Student[students.length - 1];
                System.arraycopy(students, 0, newStudents, 0, i);
                System.arraycopy(students, i + 1, newStudents, i, students.length - i - 1);
                return newStudents;
            }
        }
        return students;
    }
}

class Student {
    private int id;
    private String name;
    private int grade;

    public Student(int id, String name, int grade) {
        this.id = id;
        this.name = name;
        this.grade = grade;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public int getGrade() {
        return grade;
    }

    @Override
    public String toString() {
        return id + " " + name + " " + grade;
    }
}
