package com.octest.servlets;
 
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
 
@WebServlet("/CalcServlet")
public class CalcServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
 
 
    public formulaireservlet() {
        super();
 
    }
 
 
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher("/WEB-INF/erreurs.jsp").forward(request, response); 
    }
 
 
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
                Calcul calcul = new Calcul(
                Integer.parseInt(request.getParameter("operande1")),
                request.getParameter("operateur"),
                Integer.parseInt(request.getParameter("operande2")));
 
        request.setAttribute("calcul", calcul);
        this.getServletContext().getRequestDispatcher("/WEB-INF/erreurs.jsp").forward(request, response);
    }
 
}
