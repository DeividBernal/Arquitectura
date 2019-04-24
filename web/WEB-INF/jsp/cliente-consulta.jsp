<jsp:include page="master-page.jsp" />


<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
    <div class="row">
        <div class="container-titulo">
            <div class="titulo">
              <h3>Consultar</h3>
              <h1>Cliente</h1>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <form action="personaConsultarForm.htm" method="post">
                <div class="form-row">
                    <div class="form-group col-md-3 offset-md-3">
                        <label>Identificación</label>
                        <input class="form-control" type="text" name="identificacion" placeholder="Identificación" required>
                    </div>
                    
                    <div class="form-group col-md-3">
                        <label>Primer Nombre</label>
                        <input class="form-control" type="text" name="nombre1" placeholder="Nombre 1" required>
                    </div>
                    
                    <div class="col-md-12 text-center">
                        <input class="btn btn-primary" type="submit" value="CONSULTAR">
                    </div>
                </div>
            </form>
        </div>
        <div class="col-md-12 text-center mt-2">
            <p>${mensaje}</p>
        </div>
        <div class="table-responsive">                                                               
            <table id="tablaResultado" class="table table-striped table-hover table-bordered" >
                <thead>       
                    <tr>
                       <th>Identificación</th>
                       <th>Nombre 1</th>
                       <th>Nombre 2</th>
                       <th>Apellido 1</th>
                       <th>Apellido 2</th>
                       <th>Genero</th>
                       <th>Telefono</th>
                       <th>E-mail</th>
                       <th>Fecha Nacimiento</th>
                       <th>Tipo Persona</th>
                    </tr>
                </thead>                                        
                <tbody>
                <c:forEach var="p" items="${listaPersonas}">                                           
                    <tr>
                        <td>${p.getIdentificacion()}</td>
                        <td>${p.getNombre1()}</td>
                        <td>${p.getNombre2()}</td>
                        <td>${p.getApellido1()}</td>
                        <td>${p.getApellido2()}</td>
                        <td>${p.getGenero()}</td>
                        <td>${p.getTipoP()}</td>
                        <td>${p.getfNacimiento()}</td>
                        <td>${p.getTelef()}</td>
                        <td>${p.getEmail()}</td>                                        
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div> 
    </div>
</div>

  <jsp:include page="footer.jsp" />   	