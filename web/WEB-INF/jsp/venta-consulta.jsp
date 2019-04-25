<jsp:include page="master-page.jsp" />


<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
    <div class="row">
        <div class="container-titulo">
            <div class="titulo">
              <h3>Consultar</h3>
              <h1>Venta</h1>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <form action="ventaConsultaForm.htm" method="post">
                <div class="form-row">
                    <div class="form-group col-md-3 offset-md-3">
                        <label>Fecha</label>
                        <input class="form-control" type="date" name="fecha" placeholder="Fecha">
                    </div>
                    
                    <div class="form-group col-md-3">
                        <label>Precio</label>
                        <input class="form-control" type="text" name="precio" placeholder="Precio">
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
                       <th>Fecha</th>
                       <th>Precio de venta</th>
                       <th>Cantidad</th>
                       <th>Marca</th>
                       <th>Descripcion</th>
                       <th>Asesor o Vendedor</th>                 
                    </tr>
                </thead>                                        
                <tbody>
                <c:forEach var="v" items="${listaVenta}">                                           
                    <tr>
                        <td>${v.getFecha()}</td>
                        <td>${v.getPrecio()}</td>
                        <td>${v.getCantidad()}</td>
                        <td>${v.getMarca()}</td>
                        <td>${v.getDescripcion()}</td>
                        <td>${v.getAsesor()}</td>                                                            
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div> 
    </div>
</div>

  <jsp:include page="footer.jsp" />   	