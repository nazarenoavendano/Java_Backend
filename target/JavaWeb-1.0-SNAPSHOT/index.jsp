<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Form test</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    </head>
    <body>
        <div class="mt-2 container-sm col-xl-7 col-lg-8 col-md-9 col-11 border rounded-4">
            <form action="svUsuarios" method="POST">
                <h3 class="mt-2 mb-4">Datos de usuario</h3>
                <!-- Cedula input -->
                <div class="form-outline mb-2">
                  <input type="text" name="cedula" class="form-control">
                  <label class="form-label" for="form1Example1">DNI</label>
                </div>

                <!-- Password input -->
                <div class="form-outline mb-2">
                  <input type="text" name="nombre" class="form-control">
                  <label class="form-label" for="form1Example2">Nombre</label>
                </div>

                <div class="form-outline mb-2">
                  <input type="text" name="apellido" class="form-control">
                  <label class="form-label" for="form1Example2">Apellido</label>
                </div>

                <div class="form-outline mb-2">
                  <input type="text" name="telefono" class="form-control">
                  <label class="form-label" for="form1Example2">Telefono</label>
                </div>

                <!-- Submit button -->
                <button type="submit" class="btn btn-primary btn-block mb-2">Enviar</button>

            </form>
         
        </div>
        
        
        <div class="mt-2 container-sm col-xl-7 col-lg-8 col-md-9 col-11 border rounded-4">
                    <form action="svUsuarios" method="GET">
                         <h3 class="mt-2 mb-4">Listado de Usuarios</h3>
                        <button type="submit" class="btn btn-info mt-2 mb-4">Ver listado de usuarios</button>
                    </form>
        </div>
        
        <div class="mt-2 container-sm col-xl-7 col-lg-8 col-md-9 col-11 border rounded-4">

                    <h3 class="mt-2 mb-4">Eliminar Usuarios</h3>

                    <form action="svEliminar" method="POST">
                        <div class="row">
                                <div class="col-auto">
                                    <label class="col-form-label">Ingrese Id: </label>
                                </div>
                                <div class="col">
                                    <input type="text" class="form-control" name="idUsuario">
                                </div>
                        </div>
                        <button type="submit" class="btn btn-info mt-4 mb-4">Eliminar Usuario</button>
                    </form>
        </div>
        
        
        <div class="mt-2 container-sm col-xl-7 col-lg-8 col-md-9 col-11 border rounded-4">

                    <h3 class="mt-2 mb-4">Editar Usuarios</h3>

                    <form action="svEditar" method="GET">
                        <div class="row">
                                <div class="col-auto">
                                    <label class="col-form-label">Ingrese Id: </label>
                                </div>
                                <div class="col">
                                    <input type="text" class="form-control" name="idUsuarioEdit">
                                </div>
                        </div>
                        <button type="submit" class="btn btn-info mt-4 mb-4">Editar Usuario</button>
                    </form>
        </div>
              
    </body>
</html>


