<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

  <%
       int nombre=0;
      int[] opérandes = new int[4]; 
  char opération = request.getParameter("operation").charAt(0); 
       String[] operandes = request.getParameterValues("operandes");
      
      for(int i=0; i<operandes.length; i++) 
         if (operandes[i].length()!=0) opérandes[nombre++] = Integer.parseInt(operandes[i]);     
      int résultat = opérandes[0];
     
     switch (opération) {
        case '+' : for (int i=1; i<nombre; i++) résultat += opérandes[i]; break;
        case '-' : for (int i=1; i<nombre; i++) résultat -= opérandes[i]; break;
         case '*' : for (int i=1; i<nombre; i++) résultat *= opérandes[i]; break;
         case '/' : for (int i=1; i<nombre; i++) résultat /= opérandes[i]; break;
      }
 %>
   
<html>
    <head>
       <title>R&eacute;calcul</title>    </head>
    <body>
    <h2><%= nombre > 0 ? opérandes[0] : 0  %>
         <% 
              for(int i=1; i<nombre; i++) {
        %>
        <%= opération %> <%= opérandes[i] %>
        <% } %>
        = <%= résultat %></h2>
    </body></html>