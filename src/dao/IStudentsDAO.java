package dao;

import vo.students;

import java.util.List;

public interface IStudentsDAO {
    public boolean insertStudents(students students);
    public boolean deleteStudents(String studentId);
    public boolean updateStudents(students students);
    public List<students> findAllStudents();
    public students findStudentsById(String studentsId);
    public List<students> getStudentsLike(String option, String keyword);
}
