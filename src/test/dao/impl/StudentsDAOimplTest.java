package dao.impl;

import factory.DAOfactory;
import org.junit.Test;
import vo.students;

import java.util.ArrayList;
import java.util.List;

import static org.junit.Assert.*;

public class StudentsDAOimplTest {

    @Test
    public void insertStudents() {
    }

    @Test
    public void deleteStudents() {
    }

    @Test
    public void updateStudents() {
    }

    @Test
    public void findAllStudents() {
        StudentsDAOimpl studentsDAOimpl = new StudentsDAOimpl();
        List<students> allStudents = studentsDAOimpl.findAllStudents();
        for (students allStudent : allStudents) {
            System.out.println(allStudent.toString());
        }

    }

    @Test
    public void findStudentsById() {
    }

    @Test
    public void getStudentsLike() {
    }

    @Test
    public void testGetStudentsLike() {
        DAOfactory.getStudentsDAOimplInstance().getStudentsLike("学号","sss");
    }
}