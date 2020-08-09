<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01
    Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Manager</title>
</head>
<body>
<div align="center">
    <h2>Agent Manager</h2>
    <form method="get" action="search">
        <input type="text" name="keyword" /> &nbsp;
        <input type="submit" value="Search" />
    </form>
    <h3><a href="/AgentManager/new">New Customer</a></h3>
    <table border="1" cellpadding="5">
        <tr>
            <th>ID</th>
            <th>FirstName</th>
            <th>MiddleName</th>
            <th>LastName</th>
             <th>Password</th>
            <th>Phone</th>
            <th>E-mail</th>
           
            <th>Action</th>
        </tr>
        <c:forEach items="${listAgent}" var="agent">
        <tr>
            <td>${agent.agent_id}</td>
            <td>${agent.firstname}</td>
            <td>${agent.middlename}</td>
            <td>${agent.lastname}</td>
            <td>${agent.password}</td>
            <td>${agent.phone}</td>
            <td>${agent.emailaddress}</td>
            
            <td>
                <a href="/AgentManager/edit?id=${agent.agent_id}">Edit</a>
                &nbsp;&nbsp;&nbsp;
                <a href="/AgentManager/delete?id=${agent.agent_id}">Delete</a>
            </td>
        </tr>
        </c:forEach>
    </table>
</div>  
</body>
</html>

