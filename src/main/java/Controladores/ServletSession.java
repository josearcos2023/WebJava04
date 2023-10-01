package Controladores;

import java.io.*;

import Modelos.cBaseDatos;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "servletSession", value = "/servlet-session")
public class ServletSession extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            HttpSession misession= (HttpSession) request.getSession();
            misession.removeAttribute("usuario");
            misession.invalidate();
            response.sendRedirect("/WebJava04_war_exploded/index.jsp");
        }finally{}

    }

}