<%--
  Created by IntelliJ IDEA.
  User: gousos
  Date: 9/3/2017
  Time: 10:42 μμ
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Confirmation</title>

    <%--reading the form data and set cookies--%>

    <%
        //read form data
        String favLang = request.getParameter("favoriteLanguage");

        //create cookie

        Cookie theCookie = new Cookie("myApp.favoriteLanguage", favLang);

        //set life of cookie in seconds -- one year
        theCookie.setMaxAge(60*60*24*365);

        //send cookie to broswer

        response.addCookie(theCookie);

    %>
</head>
<body>

<p>Thank you! We set your favourite language to: ${param.favoriteLanguage}</p>
<a href="cookies-homepage.jsp">Return home</a>

</body>
</html>
