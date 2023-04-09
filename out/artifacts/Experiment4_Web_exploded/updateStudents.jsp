<%@ page import="dao.impl.StudentsDAOimpl" %>
<%@ page import="factory.DAOfactory" %>
<%@ page import="vo.students" %><%--
  Created by IntelliJ IDEA.
  User: wannner
  Date: 2023/4/5
  Time: 11:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改学生信息</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
<%
    students stu = DAOfactory.getStudentsDAOimplInstance().findStudentsById(request.getParameter("studentId"));
    request.setAttribute("id","1");
%>
<h2 class="container">处理修改学生信息页面</h2>
<table class="table container" border="3">
    <form action="doUpdateStu.jsp" method="post">
        <input type="hidden" name="id" value="1">
        <input type="hidden" name="studentId" value=<%=stu.getStudentId()%>>
        <tr>
            <th>学号</th>
            <td><%=stu.getStudentId()%></td>
        </tr>
        <tr>
            <th>姓名</th>
            <td><input type="text" value=<%=stu.getStudentName()%> name="studentName"></td>
        </tr>
        <tr>
            <th>密码</th>
            <td><input type="password" value=<%=stu.getStudentPaw()%> name="studentPwd"></td>
        </tr>
        <tr>
            <th>性别</th>
            <td>
                <%
                    if(stu.getSex().equals("男")){%>
                <input type="radio" name="sex" value="男" checked>男 <input type="radio" name="sex" value="女">女
                <%}
                else{%>
                <input type="radio" name="sex" value="男">男 <input type="radio" name="sex" value="女" checked>女
                <%}
                %>
            </td>
        </tr>
        <tr>
            <th>班级</th>
            <td>
                <%
                    int classId = stu.getClassId();
                    switch (classId){
                        case 10201811:%>
                <select name="classId"><option></option><option value="10201811" selected>计算1811</option><option value="10201821">软件1811</option><option value="10201822">软件1812</option><option value="10201841">智科1811</option><option value="10201842">智科1812</option></select>
                <%break;
                    case 10201821:%>
                <select name="classId"><option></option><option value="10201811">计算1811</option><option value="10201821" selected>软件1811</option><option value="10201822">软件1812</option><option value="10201841">智科1811</option><option value="10201842">智科1812</option></select>
                <%break;
                    case 10201822:%>
                <select name="classId"><option></option><option value="10201811">计算1811</option><option value="10201821">软件1811</option><option value="10201822" selected>软件1812</option><option value="10201841">智科1811</option><option value="10201842">智科1812</option></select>
                <%break;
                    case 10201841:%>
                <select name="classId"><option></option><option value="10201811">计算1811</option><option value="10201821">软件1811</option><option value="10201822">软件1812</option><option value="10201841" selected>智科1811</option><option value="10201842">智科1812</option></select>
                <%break;
                    case 10201842:%>
                <select name="classId"><option></option><option value="10201811">计算1811</option><option value="10201821">软件1811</option><option value="10201822">软件1812</option><option value="10201841">智科1811</option><option value="10201842" selected>智科1812</option></select>
                <%break;
                    }
                %>
            </td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="提交"></td>
        </tr>
    </form>
</table>

</body>
</html>
