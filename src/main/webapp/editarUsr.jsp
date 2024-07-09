<%@page import="logica.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar</title>
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    </head>
    <body>
        
        <div class="mt-2 container-sm col-xl-7 col-lg-8 col-md-9 col-11 border rounded-4">
            <form action="svEditar" method="POST">
                <%Usuario usr = (Usuario)request.getSession().getAttribute("usrEditar");%>
                <h3 class="mt-2 mb-4">Editar usuario <%=usr.getId()%></h3>
                
                <!-- Cedula input -->
                <div class="form-outline mb-2">
                  <input type="text" name="cedula" class="form-control" value="<%=usr.getCedula()%>">
                  <label class="form-label" for="form1Example1">DNI</label>
                </div>

                <!-- Password input -->
                <div class="form-outline mb-2">
                  <input type="text" name="nombre" class="form-control" value="<%=usr.getNombre()%>">
                  <label class="form-label" for="form1Example2">Nombre</label>
                </div>

                <div class="form-outline mb-2">
                  <input type="text" name="apellido" class="form-control" value="<%=usr.getApellido()%>">
                  <label class="form-label" for="form1Example2">Apellido</label>
                </div>

                <div class="form-outline mb-2">
                  <input type="text" name="telefono" class="form-control" value="<%=usr.getTelefono()%>">
                  <label class="form-label" for="form1Example2">Telefono</label>
                </div>

                <!-- Submit button -->
                <button type="submit" class="btn btn-primary btn-block mb-2">Guardar</button>

            </form>
         
        </div>
    </body>
</html>
