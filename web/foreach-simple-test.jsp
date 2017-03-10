<%--
  Created by IntelliJ IDEA.
  User: gousos
  Date: 10/3/2017
  Time: 9:16 μμ
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
/* In JSP, pageContext is an implicit object of type PageContext class.The pageContext object can be used to set,get or remove attribute from one of the following scopes:
page
request
session
application
In JSP, page scope is the default scope.*/

    String[] cities={"Larissa","Trikala","Chania"};
    pageContext.setAttribute("MyCities", cities);
    /*set attribute???????????*/


%>



<html>
<head>
    <title>Foreach JSTL example</title>
</head>
<body>




<c:forEach var="tempCity" items="${MyCities}">
    ${tempCity}<br>

</c:forEach>

</body>
</html>
