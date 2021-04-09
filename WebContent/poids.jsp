<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
float t = Float.parseFloat(request.getParameter("t") );
String se = request.getParameter("f") ;
String se = request.getParameter("h") ;
String g="" ;
if (g.equals(f)){
%>
votre poids ideal est : <%=  (72.7 * t) - 58 %>
<% 	
}else {
%>
votre poids edeal est : <%=  (62.1 * t) - 44.7 %>
<% 
}
%>
</body>
</html>