<%--
  Created by IntelliJ IDEA.
  User: gousos
  Date: 11/3/2017
  Time: 9:06 μμ
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%--set a var if the param is not empty i use the local else i use the default--%>
<c:set var="theLocale"
       value="${not empty param.theLocale?param.theLocale:pageContext.request.locale}"
       scope ="session"/>

<fmt:setLocale value="${theLocale}"/>
<fmt:setBundle basename="com.gousos.tagdemo.i18n.resources.myLabels"/>

<html>
<head>
    <title>Multy language example</title>
</head>
<body>

<a href="i18n-messages-test.jsp?theLocale=en_US">English</a>|
<a href="i18n-messages-test.jsp?theLocale=el_GR">Greek</a>|
<a href="i18n-messages-test.jsp?theLocale=es_ES">Spanish</a>
<hr>
<br>

<fmt:message key="label.greeting"/><br>
<fmt:message key="label.firstname"/> <i>Kostas</i><br>
<fmt:message key="label.lastname"/><i>Gousopoulos</i><br>
<fmt:message key="label.welcome"/><br>

</body>
</html>
