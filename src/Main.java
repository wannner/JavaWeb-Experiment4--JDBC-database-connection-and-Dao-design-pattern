import dao.impl.StudentsDAOimpl;
import vo.students;

import java.util.List;

public class Main {
    public static void main(String[] args) {
        System.out.println("Hello world!");
        StudentsDAOimpl studentsDAOimpl = new StudentsDAOimpl();
        List<students> allStudents = studentsDAOimpl.findAllStudents();
        for (students allStudent : allStudents) {
            System.out.println(allStudent.toString());
        }
    }
}