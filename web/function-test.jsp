<%--
  Created by IntelliJ IDEA.
  User: gousos
  Date: 10/3/2017
  Time: 11:51 μμ
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<html>
<head>
    <title>Function Test</title>
</head>
<body>

<c:set var ="data" value ="gousos"/>
    Length of the string ${data}: is ${fn:length(data)}<br>
    The Uppercase of the string ${data}: is ${fn:toUpperCase(data)}<br>
    Does the string ${data}starts with g?: ${fn:startsWith(data,"g")}<br>



</body>
</html>
