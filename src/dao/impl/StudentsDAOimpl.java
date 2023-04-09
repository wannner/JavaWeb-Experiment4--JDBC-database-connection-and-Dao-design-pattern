package dao.impl;

import dao.IStudentsDAO;
import db.ConnectionManager;
import vo.students;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class StudentsDAOimpl implements IStudentsDAO {
    @Override
    public boolean insertStudents(students students) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        try {
            connection = ConnectionManager.getConnection();
            String sqlStr = "insert into  students value(?,?,?,?,?)";
            preparedStatement = connection.prepareStatement(sqlStr);
            preparedStatement.setString(1, students.getStudentId());
            preparedStatement.setString(2, students.getStudentName());
            preparedStatement.setString(3, students.getStudentPaw());
            preparedStatement.setString(4, students.getSex());
            preparedStatement.setInt(5, students.getClassId());
            System.out.println(students.getSex());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            ConnectionManager.closeConnection(connection);
            ConnectionManager.closeStatement(preparedStatement);
        }
        return false;
    }

    @Override
    public boolean deleteStudents(String studentId) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        connection = ConnectionManager.getConnection();
        String sqlStr = "delete from students where studentId=?";
        try {
            preparedStatement = connection.prepareStatement(sqlStr);
            preparedStatement.setString(1, studentId);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            ConnectionManager.closeConnection(connection);
            ConnectionManager.closeStatement(preparedStatement);
        }
        return true;
    }

    @Override
    public boolean updateStudents(students students) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        connection = ConnectionManager.getConnection();
        String sqlStr = "update students set studentName=?,studentPwd=?,sex=?,classId=? where studentId=?";
        try {
            preparedStatement = connection.prepareStatement(sqlStr);
            preparedStatement.setString(1, students.getStudentName());
            preparedStatement.setString(2, students.getStudentPaw());
            preparedStatement.setString(3, students.getSex());
            preparedStatement.setInt(4, students.getClassId());
            preparedStatement.setString(5, students.getStudentId());
            preparedStatement.executeUpdate();
            System.out.println(sqlStr);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            ConnectionManager.closeConnection(connection);
            ConnectionManager.closeStatement(preparedStatement);
        }
        return false;
    }

    @Override
    public List<students> findAllStudents() {
        List<students> all = new ArrayList<students>();
//        students students=new students();
        ResultSet resultSet = null;
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        connection = ConnectionManager.getConnection();
        String sqlStr = "select * from students";
        try {
            preparedStatement = connection.prepareStatement(sqlStr);
            resultSet = preparedStatement.executeQuery(sqlStr);
            while (resultSet.next()) {
                students students = new students();
                students.setStudentId(resultSet.getString(1));
                students.setStudentName(resultSet.getString(2));
                students.setStudentPaw(resultSet.getString(3));
                students.setSex(resultSet.getString(4));
                students.setClassId(resultSet.getInt(5));
                all.add(students);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            ConnectionManager.closeStatement(preparedStatement);
            ConnectionManager.closeConnection(connection);
            ConnectionManager.closeResultSet(resultSet);
        }
        return all;
    }

    @Override
    public students findStudentsById(String studentsId) {
        List<students> lstu = new ArrayList<students>();
        lstu = findAllStudents();
        for (students stu : lstu) {
            if (stu.getStudentId().equals(studentsId)) {
                return stu;
            }
        }
        return null;
    }

    @Override
    public List<students> getStudentsLike(String option, String keyword) {
        List<students> stu = new ArrayList<students>();
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        connection = ConnectionManager.getConnection();
        String sqlStr = null;
        ResultSet resultSet = null;
        switch (option) {
            case "学号": {
                sqlStr = "select * from students where studentId like ?";
                break;
            }
            case "姓名": {
                sqlStr = "select * from students where studentName like ?";
                break;
            }
            case "性别": {
                sqlStr = "select * from students where sex like ?";
                break;
            }
            case "班级": {
                sqlStr = "select * from students where classId like ?";
                break;
            }
        }
        try {
            preparedStatement = connection.prepareStatement(sqlStr);
            System.out.println(keyword = "%" + keyword + "%");
            preparedStatement.setString(1, keyword);
            System.out.println(sqlStr);
            resultSet = preparedStatement.executeQuery();
            if (resultSet != null)
                while (resultSet.next()) {
                    students students = new students();
                    students.setStudentId(resultSet.getString(1));
                    students.setStudentName(resultSet.getString(2));
                    students.setStudentPaw(resultSet.getString(3));
                    students.setSex(resultSet.getString(4));
                    students.setClassId(resultSet.getInt(5));
                    stu.add(students);
                }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            ConnectionManager.closeConnection(connection);
            ConnectionManager.closeStatement(preparedStatement);
            ConnectionManager.closeResultSet(resultSet);
        }
        return stu;
    }
}
