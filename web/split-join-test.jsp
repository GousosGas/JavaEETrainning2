<%--
  Created by IntelliJ IDEA.
  User: gousos
  Date: 11/3/2017
  Time: 12:46 πμ
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<html>
<head>
    <title>Split Join Example</title>
</head>
<body>
<c:set var="data" value="London,Amserdam,Berlin"/>
<h3>Split Demo</h3>
<c:set var="citiesArray" value="${fn:split(data, ',')}"/>

<c:forEach var="splitArray" items="${citiesArray}">
${splitArray}<br>
</c:forEach>

<h3>Join Demo</h3>
<c:set var="fun" value="${fn:join(citiesArray,'-' )}"/>
Result: ${fun}


</body>
</html>
