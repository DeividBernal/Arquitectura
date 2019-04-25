<jsp:include page="master-page.jsp" />


<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
    <div class="row">
        <div class="container-titulo">
            <div class="titulo">
              <h3>Consultar</h3>
              <h1>Vehiculo</h1>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <form action="vehiculoConsultarForm.htm" method="post">
                <div class="form-row">
                    <div class="form-group col-md-3 offset-md-3">
                        <label>Nombre del Vehiculo</label>
                        <input class="form-control" type="text" name="nombre" placeholder="Nombre">
                    </div>
                    
                    <div class="form-group col-md-3">
                        <label>Costo del vehiculo</label>
                        <input class="form-control" type="text" name="costo" placeholder="Costo">
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
                       <th>Nombre del vehiculo</th>
                       <th>Costo</th>
                       <th>Precio de venta</th>
                       <th>Matricula</th>
                       <th>Año de fabricación</th>
                       <th>Cilindraje</th>
                       <th>Color</th>
                       <th>Numero de sillas</th>
                       <th>Marca</th>
                       <th>Pais de fabricación</th>
                    </tr>
                </thead>                                        
                <tbody>
                <c:forEach var="p" items="${listavehiculo}">                                           
                    <tr>
                        <td>${p.getNombre()}</td>
                        <td>${p.getCosto()}</td>
                        <td>${p.getPrecio()}</td>                        
                        <td>${p.getMatricula()}</td>
                        <td>${p.getAño()}</td>  
                        <td>${p.getCilindraje()}</td>
                        <td>${p.getColor()}</td>
                        <td>${p.getSillas()}</td>
                        <td>${p.getMarca()}</td>
                        <td>${p.getPais()}</td>                                                              
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div> 
    </div>
</div>

  <jsp:include page="footer.jsp" />   	