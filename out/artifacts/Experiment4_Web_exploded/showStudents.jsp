<%@ page import="factory.DAOfactory" %>
<%@ page import="vo.students" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: wannner
  Date: 2023/4/3
  Time: 19:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>显示所有的学生信息</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
<div>
    <h3 class="container">显示所有学生的信息</h3>
    <table class="table container" border="3">
        <tr><th>学号</th><th>姓名</th><th>性别</th><th>班级</th><th>操作</th></tr>
        <%
            List<students> students=new ArrayList<students>();
            List<students> allStudents = DAOfactory.getStudentsDAOimplInstance().findAllStudents();

            for (students allStudent : allStudents) {
        %>
        <tr>
        <td><%=allStudent.getStudentId()%></td>
        <td><%=allStudent.getStudentName()%></td>
        <td><%=allStudent.getSex()%></td>
        <td><%=allStudent.getClassId()%>
            <td>
            <a href="updateStudents.jsp?studentId=<%=allStudent.getStudentId()%>">修改</a>
            <a href="doUpdateStu.jsp?id=2&studentId=<%=allStudent.getStudentId()%>">删除</a>
            </td>
        </td>
        </tr>
        <%}
        %>
    </table>
    <div class="container">
    <a class="container" href="insertStudents.jsp">增加学生信息</a>
        <a href="doSearch.jsp" class="container">模糊查询</a>
    </div>
    </div>
</body>
</html>
