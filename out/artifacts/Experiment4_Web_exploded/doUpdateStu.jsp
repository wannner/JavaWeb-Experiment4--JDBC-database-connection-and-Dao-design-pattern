<%@ page import="factory.DAOfactory" %>
<%@ page import="vo.students" %><%--
  Created by IntelliJ IDEA.
  User: wannner
  Date: 2023/4/5
  Time: 10:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>处理修改学生信息页面</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String studentId=request.getParameter("studentId");
    //参数1代表修改数据 参数2代表删除数据
    if (request.getParameter("id").equals("1")) {
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
        DAOfactory.getStudentsDAOimplInstance().updateStudents(stu);
        System.out.println(stu.toString());
        System.out.println(request.getHeader("referer"));%>
<h2 class="container">修改成功！</h2>
    <%}
    else{
        System.out.println(studentId);
        DAOfactory.getStudentsDAOimplInstance().deleteStudents(studentId);%>
<h2 class="container">删除成功！</h2>
<%
    }
%>
<a class="container" href="showStudents.jsp">返回</a>

</body>
</html>
