<%--
  Created by IntelliJ IDEA.
  User: wannner
  Date: 2023/4/4
  Time: 22:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>增加学生信息</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
<h3 class="container">增加学生信息</h3>
<%
    System.out.println();
    request.setCharacterEncoding("UTF-8");
%>
<table class="table container" border="3">
    <form action="doInsertStu.jsp" method="post">
        <tr>
            <th>学号</th>
            <td><input type="text" name="studentId"></td>
        </tr>
        <tr>
            <th>姓名</th>
            <td><input type="text" name="studentName"></td>
        </tr>
        <tr>
            <th>密码</th>
            <td><input type="password" name="studentPwd"></td>
        </tr>
        <tr>
            <th>性别</th>
            <td><input type="radio" name="sex" value="男">男  <input type="radio" name="sex" value="女">女</td>
        </tr>
        <tr>
            <th>班级</th>
            <td>
                <select name="classId">
                    <option></option>
                    <option value="10201811">计算1811</option>
                    <option value="10201821">软件1811</option>
                    <option value="10201822">软件1812</option>
                    <option value="10201841">智科1811</option>
                    <option value="10201842">智科1812</option>
                </select>
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
