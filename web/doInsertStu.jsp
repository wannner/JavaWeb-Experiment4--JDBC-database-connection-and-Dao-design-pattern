<%@ page import="vo.students" %>
<%@ page import="factory.DAOfactory" %><%--
  Created by IntelliJ IDEA.
  User: wannner
  Date: 2023/4/5
  Time: 10:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    students stu = new students();
    stu.setStudentId(request.getParameter("studentId"));
    stu.setStudentName(request.getParameter("studentName"));
    stu.setStudentPaw(request.getParameter("studentPwd"));
    stu.setSex(request.getParameter("sex"));
    //把string转换为int
    String classId = request.getParameter("classId");
    int id = 0;
    for (int i = 0; i < classId.length(); i++) {
        id = id * 10 + (classId.charAt(i) - '0');
    }
    stu.setClassId(id);
    DAOfactory.getStudentsDAOimplInstance().insertStudents(stu);
    System.out.println(stu.toString());
    System.out.println(request.getHeader("referer"));
%>
<h3 class="container">添加成功！</h3> <br>
<a class="container" href="showStudents.jsp">返回</a>
</body>
</html>
