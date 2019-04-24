<%-- 
    Document   : master-page
    Created on : 18/04/2019, 03:11:23 PM
    Author     : Deivid Bernal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!doctype html>
<html lang="es">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <link rel="icon" type="image/png" href="images/logo.png">
    <title>Vehialpes</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <!--  CSS -->
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/responsive.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <link rel="stylesheet" href="css/animate.css">
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,500,700,900" rel="stylesheet">
  </head>
<body>

  <div class="top-bar">
    <div class="container">
      <div class="top-direccion">
        <i class="fa fa-map-marker-alt"></i>
        <p>Carrera 234 #22A - 20. Bogotá D.C. </p>      
      </div>

      <div class="top-mail">
        <i class="fa fa-envelope"></i>
        <p>ventasyrepuestos@vehialpes.com.co</p>      
      </div>
    </div>
  </div>
  <header class="container">
    <nav class="navbar navbar-expand-lg navbar-dark">
      <a class="navbar-brand brand-mobile" href="#home">
        <img src="images/logo.png" alt="Paisa Racing - Taller de Motos en Soacha">
      </a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main_nav" aria-controls="main_nav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="main_nav">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item">
            <a class="nav-link" href="index.htm">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="catalogo.htm">Catalogo</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              Garantias
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
              <a class="dropdown-item" href="GarantiaCrear.htm">Crear</a>
              <a class="dropdown-item" href="GarantiaConsulta.htm">Consultar</a>
              <a class="dropdown-item" href="GarantiaEditar.htm">Editar</a>
            </div>
          </li>
          <a class="navbar-brand brand-desktop" href="index.htm">
            <img src="images/logo.png" alt="">
          </a>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              Clientes
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
              <a class="dropdown-item" href="clienteCrear.htm">Crear</a>
              <a class="dropdown-item" href="ClienteConsulta.htm">Consultar</a>
              <a class="dropdown-item" href="ClienteEditar.htm">Editar</a>
            </div>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              Ventas
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
              <a class="dropdown-item" href="ventaCrear.htm">Crear</a>
              <a class="dropdown-item" href="ventaConsulta.htm">Consultar</a>
              <a class="dropdown-item" href="ventaEditar.htm">Editar</a>
            </div>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              Vehículos
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
              <a class="dropdown-item" href="VehiculosCrear.htm">Crear</a>
              <a class="dropdown-item" href="VehiculosConsultar.htm">Consultar</a>
              <a class="dropdown-item" href="VehiculosEditar.htm">Editar</a>
            </div>
          </li>
        </ul>
      </div>
    </nav>
  </header>


        
        
        