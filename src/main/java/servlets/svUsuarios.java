package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Controladora;
import logica.Usuario;



@WebServlet(name = "svUsuarios", urlPatterns = {"/svUsuarios"})
public class svUsuarios extends HttpServlet {
    Controladora control = new Controladora(); // Post y Get para traer usuarios que necesitemos

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

        List<Usuario> listaUsuarios= new ArrayList<>();
        listaUsuarios= control.leerUsuarios();
        
        HttpSession miSesion= request.getSession();
        miSesion.setAttribute("listaUsuarios", listaUsuarios);
        
        response.sendRedirect("Listado.jsp");
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            String cedula= request.getParameter("cedula");
            String nombre= request.getParameter("nombre");
            String apellido= request.getParameter("apellido");
            String telefono= request.getParameter("telefono");
            
            Usuario usr= new Usuario();
            usr.setCedula(cedula);
            usr.setNombre(nombre);
            usr.setApellido(apellido);
            usr.setTelefono(telefono);
            
            control.crearUsuario(usr);
            response.sendRedirect("index.jsp");
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
