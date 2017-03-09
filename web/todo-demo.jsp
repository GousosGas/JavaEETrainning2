<%@ page import="java.util.*" %>
<html>

<body>

<%--Step 1: Create HTML form--%>
<form action="todo-demo.jsp">
    Add new item: <input type="text" name="newItem">
    <input type="submit" values="Submit">
</form>
<br>
<%--<p>Item entered: <%=request.getParameter("newItem")%></p>--%>


<%-- Step 2: Add new item to "To DO " list--%>

<%
    //get the to do items from the session
    List<String> items = (List<String>) session.getAttribute("myToDoList");

    if(items == null){
        items= new ArrayList<>();
        session.setAttribute("myToDoList", items);
    }

    // see if there is form data to add

    String newItem = request.getParameter("newItem");
    if(newItem != null){
        items.add(newItem);
    }

%>
<%--Step 3: Display all "TO Do" items from session--%>
<hr>
<b>To Do Items:</b>
<ol>
    <%
        for(String temp: items){
            out.println("<li>"+temp+"</li>");
        }
    %>

</ol>
</body>
</html>