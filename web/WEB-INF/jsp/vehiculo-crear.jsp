<jsp:include page="master-page.jsp" />


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
            <form action="personaRegistrar.htm" method="post">
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
                        <label>Año de fabricación</label>
                        <input class="form-control" type="date" name="año" placeholder="Año" required>
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
                        <input class="form-control" type="text" name="marca" placeholder="Marca" required="">
                    </div>
                    <div class="form-group col-md-4">
                        <label>Pais de fabricación</label>
                        <input class="form-control" type="text" name="pais" placeholder="Pais" required="">
                    </div>
                </div>
               
                <div class="col-md-12 text-center">
                    <input class="btn btn-primary" type="submit" value="REGISTRAR">
                </div>
                
                <div class="col-md-12 text-center">
                    <p>${mensaje}</p>
                </div>
            </form>
        </div>
    </div>
</div>


  <jsp:include page="footer.jsp" />   