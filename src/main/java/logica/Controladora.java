package logica;

import java.util.List;
import persistencia.ControladoraPersistencia;

// Clase que centraliza peticiones

public class Controladora {
    
    ControladoraPersistencia controlPersistencia = new ControladoraPersistencia();
    
    
    // Create
    public void crearUsuario(Usuario usr){     
        controlPersistencia.crearUsuario(usr);   
    }
    
    // Read
    public List<Usuario> leerUsuarios(){
        return controlPersistencia.leerUsuarios();
    }

    public void borrarUsuario(int idEliminar) {
       controlPersistencia.borrarUsuario(idEliminar);
       
    }

    public Usuario leerUsuario(int idEditar) {
        return controlPersistencia.traerUsuario(idEditar);
    }

    public void editarUsuario(Usuario usr) {
       controlPersistencia.editarUsuario(usr);
    }

    
}
