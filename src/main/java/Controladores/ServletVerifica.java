package Controladores;

import java.io.*;

import Modelos.cBaseDatos;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "servletVerifica", value = "/servlet-verifica")
public class ServletVerifica extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            String xnom = request.getParameter("xnom");
            String xcla = request.getParameter("xcla");
            cBaseDatos objDB = new cBaseDatos();
            if (objDB.validarUsuario(xnom, xcla)){
                HttpSession misession= request.getSession(true);
                misession.setAttribute("usuario",xnom.toUpperCase());
                response.sendRedirect("/WebJava04_war_exploded/areas.jsp");

            }else
                response.sendRedirect("/WebJava04_war_exploded/");
        } finally {
            out.close();
        }
    }
}