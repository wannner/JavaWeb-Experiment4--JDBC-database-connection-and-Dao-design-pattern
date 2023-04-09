<%@ page import="factory.DAOfactory" %>
<%@ page import="vo.students" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: wannner
  Date: 2023/4/7
  Time: 10:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>模糊查询</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
<%
    String search = request.getParameter("search");
    String option = request.getParameter("option");
    List<students> studentsLike = null;
    if (search != null && option != null) {
        studentsLike = DAOfactory.getStudentsDAOimplInstance().getStudentsLike(option, search);
    }
%>
<div class="container" style="text-align: center">
    <form action="doSearch.jsp">
        <h3>模糊查询</h3>
        <select name="option">
            <option></option>
            <option value="学号">学号</option>
            <option value="姓名">姓名</option>
            <option value="性别">性别</option>
            <option value="班级">班级</option>
        </select>
        <input type="text" name="search">
        <input type="submit" value="提交">
    </form>
    <br>
</div>

<table class="container table" border="2">
    <tr>
        <th>学号</th>
        <th>姓名</th>
        <th>性别</th>
        <th>班级</th>
    </tr>
    <%
        if (search != null && option != null) {
    %>
    <%
        for (students students : studentsLike) {
    %>
    <tr>
        <td><%=students.getStudentId()%>
        </td>
        <td><%=students.getStudentName()%>
        </td>
        <td><%=students.getSex()%>
        </td>
        <td><%=students.getClassId()%>
        </td>
    </tr>
    <%
            }
        }
    %>
</table>
<a href="showStudents.jsp" class="container">返回</a>

</body>
</html>
