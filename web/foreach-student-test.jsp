<%--
  Created by IntelliJ IDEA.
  User: gousos
  Date: 10/3/2017
  Time: 10:40 μμ
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*,com.gousos.jsp.tagedemo.Student" %>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<%
    List<Student> data = new ArrayList<>();
    data.add(new Student("Kostas","Gousopoulos",false));
    data.add(new Student("Fotis","Gousopoulos",true));
    data.add(new Student("Vaso","Gousopoulou",false));

    pageContext.setAttribute("myStudents",data);

%>


<html>
<head>
    <title>Student Foreach Test</title>
</head>
<body>

<table border="1">

    <tr>
        <th>First name</th>
        <th>Last name</th>
        <th>Gold Customer</th>
    </tr>

    <c:forEach var="tempStudent" items="${myStudents}">
        <tr>
            <td> ${tempStudent.firstname}</td>
            <td> ${tempStudent.lastname}</td>
            <td> ${tempStudent.goldCustomer}</td>
        </tr>

        <br>

    </c:forEach>
</table>


</body>
</html>
