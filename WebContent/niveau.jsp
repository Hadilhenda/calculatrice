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
int score=10 ;
if (score<3) out.println("vous etes un débutant");
else if (score<5) out.println("vous avez un niveau moyen ");
else out.println("vous etes un expert !");
%>

</body>
</html>