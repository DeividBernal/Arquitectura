<jsp:include page="master-page.jsp" />

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
    <div class="row">
        <div class="container-titulo">
            <div class="titulo">
              <h3>Crear</h3>
              <h1>Vehiculo</h1>
            </div>
        </div>
        <div class="col-md-12">
            <p>Ingrese todos los campos</p>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <form action="vehiculoRegistrar.htm" method="post">
                <div class="form-row">
                    <div class="form-group col-md-4">
                        <label>Nombre del vehiculo</label>
                        <input class="form-control" type="text" name="nombre" placeholder="Nombre" required>
                    </div>
                    
                    <div class="form-group col-md-4">
                        <label>Costo del vehiculo</label>
                        <input class="form-control" type="text" name="costo" placeholder="Costo" required>
                    </div>
                    
                    <div class="form-group col-md-4">
                        <label>Precio de venta</label>
                        <input class="form-control" type="text" name="precio" placeholder="Precio" required>
                    </div>
                    
                    <div class="form-group col-md-4">
                        <label>Matricula</label>
                        <input class="form-control" type="text" name="matricula" placeholder="Matricula" required>
                    </div>
                    
                    <div class="form-group col-md-4">
                        <label>A�o de fabricaci�n</label>
                        <input class="form-control" type="number" name="a�o" placeholder="A�o" required>
                    </div>
                    <div class="form-group col-md-4">
                        <label>Cilindraje</label>
                        <input class="form-control" type="text" name="cilindraje" placeholder="Cilindraje" required="">
                    </div>
                    <div class="form-group col-md-4">
                        <label>Color</label>
                        <input class="form-control" type="text" name="color" placeholder="Color" required="">
                    </div>
                    <div class="form-group col-md-4">
                        <label>Numero de sillas</label>
                        <input class="form-control" type="text" name="sillas" placeholder="Sillas" required="">
                    </div>
                    <div class="form-group col-md-4">
                        <label>Marca</label>
                        <select name="marca" class="form-control">
                            <c:forEach var="p" items="${marcas}">     
                                <option value="${p.getId()}">${p.getDescripcion()}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="form-group col-md-4">
                        <label>Pais de fabricaci�n</label>
                        <select name="pais" class="form-control">
                            <c:forEach var="p" items="${paises}">     
                                <option value="${p.getId()}">${p.getDescripcion()}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
               
                <div class="col-md-12 text-center">
                    <input class="btn btn-primary" type="submit" value="REGISTRAR">
                </div>
                
                <div class="col-md-12 text-center">
                    <p>${mensajeVehiculo}</p>
                </div>
            </form>
        </div>
    </div>
</div>


  <jsp:include page="footer.jsp" />   