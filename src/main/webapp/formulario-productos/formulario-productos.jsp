

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.util.ArrayList" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sistema de Gestin</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        .navbar {
            background-color: #6c757d; 
        }
        .navbar-brand, .nav-link {
            color: #fff; 
        }
        .nav-link:hover {
            color: #ffc107; 
        }
        .form-control, .input-group-text {
            background-color: #e9ecef; 
        }
        .btn-success {
            background-color: #28a745; 
        }
        .btn-success:hover {
            background-color: #218838; 
        }
        .text-success {
            color: #28a745; 
        }
        .container {
            margin-top: 100px;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg fixed-top">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Agregar Productos!</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
                <div class="offcanvas-header">
                    <h5 class="offcanvas-title" id="offcanvasNavbarLabel">Inicio</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                </div>
                <div class="offcanvas-body">
                    <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="../index.jsp">Inicio</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="../formulario-productos/formulario-productos.jsp">Formulario de Productos</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="../lista-productos/lista-productos.jsp">Lista de Productos</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>

    <div class="container">
        <% ArrayList<String> productos = (ArrayList) request.getAttribute("producto"); %>
        <div class="text-center mt-4">
            <% if (productos != null) { %>
                <p class="text-success display-5">¡Se agregó con éxito!</p>
                <ul class="list-unstyled">
                    <% for (String prod : productos) { %>
                        <li class="mt-1"><%= prod %></li>
                    <% } %>
                </ul>
            <% } %>
        </div>

        <div class="card mt-5 p-4">
            <form action="/SGBDProductos/producto-servlet/" method="post" enctype="multipart/form-data">
                <div class="form-floating mb-3">
                    <input class="form-control" id="nombreProducto" name="nombreProducto" type="text" placeholder="Nombre del Producto">
                    <label for="nombreProducto">Nombre del Producto</label>
                </div>
                <div class="form-floating mb-3">
                    <textarea class="form-control" placeholder="Descripción del Producto" id="descripcionProducto" name="descripcionProducto" style="height: 100px;"></textarea>
                    <label for="descripcionProducto">Descripción del Producto</label>
                </div>
                <div class="form-floating mb-3">
                    <input class="form-control" id="marcaProducto" name="marcaProducto" type="text" placeholder="Marca del Producto">
                    <label for="marcaProducto">Marca del Producto</label>
                </div>
                <div class="input-group mb-3">
                    <span class="input-group-text bg-success text-white">Q</span>
                    <input type="text" class="form-control" aria-label="Amount (to the nearest dollar)" name="precioProducto">
                    <span class="input-group-text bg-success text-white">.00</span>
                </div>
                <div class="text-center">
                    <input class="btn btn-success" type="submit" value="Agregar">
                </div>
            </form>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>