<%-- 
    Document   : topmenu
    Created on : 24/06/2021, 01:54:20 AM
    Author     : Kokox
--%>
<%@page import="Beans.ProductosBeans"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Beans.UsuariosBeans"%>
<%@page import="java.io.PrintWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
        <% 
            UsuariosBeans usr = (UsuariosBeans)session.getAttribute("sesUsername");
            %> 
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">   
        <nav class="navbar navbar-expand-lg navbar-light">
          <div class="container-fluid">
              <a href="#" class="navbar-brand"><img class="logo-color" src="img/logo-color.png" alt="alt"/></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="navbar-contenedor">
              <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item  margin-r20 c-gris">
                  <a class="nav-link active" aria-current="page" href=".">Inicio</a>
                </li>
                <li class="nav-item dropdown  margin-r20 c-gris">
                  <a class="nav-link dropdown-toggle c-gris" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                    Mantenimiento
                  </a>
                  <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <li><a class="dropdown-item" href="addProd.jsp">Agregar Producto</a></li>
                    <li><a class="dropdown-item" href="#">Registrar Entrada</a></li>
                    <li><a class="dropdown-item" href="#">Registrar Salida</a></li>
                    <li><hr class="dropdown-divider"></li>
                    <li><a class="dropdown-item" href="#">Trazabilidad</a></li>
                  </ul>
                </li>
              </ul>
              <form class="d-flex  margin-r20 contenedor-buscar">
                <input class="form-control me-2 input-buscar" type="search" placeholder="Buscar por código" aria-label="Search">
                <button class="boton-buscar" type="submit"><i class="bi bi-search"></i></button>
              </form>
              <div class="navbar-nav ml-auto">
                <a href="#" class="nav-item nav-link notifications"><i class="fa fa-bell-o"></i><span class="badge">1</span></a>
                <li class="nav-item dropdown">
                    <a href="#" data-bs-toggle="dropdown" class="nav-link dropdown-toggle user-action"><b class="caret c-gris"> <%=usr.getUsername()%> </b></a>
                    <ul class="dropdown-menu dropdown-menu-end">
                        <li><a href="#" class="dropdown-item c-gris"><i class="fa fa-user-o c-gris"></i> Perfil</a></li>
                        <li><a href="#" class="dropdown-item c-gris"><i class="fa fa-sliders c-gris"></i> Opciones</a></a></li>
                        <li><div class="dropdown-divider"></div></li>
                        <li><a href="CRUDServlet?op=logout" class="dropdown-item c-gris"><i class="material-icons c-gris">&#xE8AC;</i> Salir</a></li>
                    </ul>
                </li>
              </div>                
            </div>
            </div>
          </div>
        </nav>