<%@page import="java.util.List"%>
<%@page import="logica.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listado de usuarios</title>
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
  
    </head>
    <body>
        <form class="container-sm col-xl-7 col-lg-8 col-md-9 col-11 mt-2  border rounded-4">
            <h1 class="mt-2 mb-4 text-center">Listado de usuarios registrados</h1>
            
            <% 
                List<Usuario> listaUsuarios = (List) request.getSession().getAttribute("listaUsuarios");
                
                int cont=1;
                for(Usuario u: listaUsuarios){
            %>
            
             <div class="card mb-4">
                    <div class="card-body">
                        <h5 class="card-title"> <p><b>Cliente: <%=cont%></b></p> </h5>
                        <p class="card-text">Id: <%=u.getId()%></p>
                        <p class="card-text">Cedula: <%=u.getCedula()%></p>
                        <p class="card-text">Nombre: <%=u.getNombre()%></p>
                        <p class="card-text">Apellido: <%=u.getApellido()%></p>
                        <p class="card-text">Telefono: <%=u.getTelefono()%></p>
                    </div>   
              </div>

            <%    
                cont+=1;
                }
            %>
       
     </form>
    </body>
</html>
