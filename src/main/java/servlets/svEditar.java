package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Controladora;
import logica.Usuario;


@WebServlet(name = "svEditar", urlPatterns = {"/svEditar"})
public class svEditar extends HttpServlet {
    Controladora control = new Controladora();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        int idEditar = Integer.parseInt(request.getParameter("idUsuarioEdit"));
        Usuario usr= control.leerUsuario(idEditar);
        
        HttpSession miSesion= request.getSession();
        miSesion.setAttribute("usrEditar", usr);
        
        response.sendRedirect("editarUsr.jsp");
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            
            String cedula= request.getParameter("cedula");
            String nombre= request.getParameter("nombre");
            String apellido= request.getParameter("apellido");
            String telefono= request.getParameter("telefono");
            
            Usuario usr= (Usuario)request.getSession().getAttribute("usrEditar");
            usr.setCedula(cedula);
            usr.setNombre(nombre);
            usr.setApellido(apellido);
            usr.setTelefono(telefono);
            
            control.editarUsuario(usr);
            response.sendRedirect("index.jsp");
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
