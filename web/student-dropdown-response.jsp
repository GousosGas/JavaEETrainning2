<%--
  Created by IntelliJ IDEA.
  User: gousos
  Date: 9/3/2017
  Time: 7:11 μμ
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student confirm </title>
</head>



<body>
<p>Student is confirmed: ${param.firstname} ${param.lastname}</p>
<p>Student's country: ${param.country}</p>
<p>Student's favourite language:
<ul>
    <% String[]langs = request.getParameterValues("favouriteLanguage");
        if (langs != null) {
            for (String tempLang : langs) {
                out.println("<li>" + tempLang + "</li>");

            }
        }

    %>
</ul>
</p>
</body>
</html>
