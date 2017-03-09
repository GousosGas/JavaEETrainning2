<%--
  Created by IntelliJ IDEA.
  User: gousos
  Date: 9/3/2017
  Time: 11:05 μμ
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Homepage </title>
</head>
<body>

<h3>Training Portal</h3>

<%--read the favorite programming language cookie--%>
<%
    //the default .... if there are no cookies
    String favLang = "Java";

    //get the cookies from the broswer request

    Cookie[] theCookkies = request.getCookies();

    // find our favorite language cookie

    if(theCookkies!=null){
        for (Cookie tempCookie: theCookkies){
            if("myApp.favoriteLanguage".equals(tempCookie.getName())){
                favLang = tempCookie.getValue();
                break;
            }
        }
    }


%>

<%--Show personalize page - use favLang value--%>
<h4>New Books for <%= favLang %></h4>
<ul>
    <li>blah blah</li>
    <li>blah blah</li>
    <li>blah blah</li>
    <li>blah blah</li>
    <li>blah blah</li>
</ul>

<h4>Latest news for <%= favLang %></h4>
<ul>
    <li>blah blah</li>
    <li>blah blah</li>
    <li>blah blah</li>
    <li>blah blah</li>
    <li>blah blah</li>
</ul>

<a href="cookies-personalize-form.html">Personalize this page.</a>

</body>
</html>
