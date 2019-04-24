<jsp:include page="master-page.jsp" />

<div class="container">
    <div class="row">
        <div class="container-titulo">
            <div class="titulo">
              <h3>Editar</h3>
              <h1>Vehiculo</h1>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <form action="vehiculoEditarForm1.htm" method="post">
                <div class="form-row">
                    <div class="form-group col-md-3 offset-md-3">
                        <label>Nombre</label>
                        <input class="form-control" type="text" name="nombre" placeholder="Nombre" required>
                    </div>

                    <div class="form-group col-md-3">
                        <label>Costo del vehiculo</label>
                        <input class="form-control" type="text" name="costo" placeholder="Costo" required>
                    </div>

                    <div class="col-md-12 text-center">
                        <input class="btn btn-primary" type="submit" value="CONSULTAR">
                    </div>
                </div>
            </form>                                                                                                       
        </div>				
    </div>                    
    <div class="row">
        <div class="col-md-12">
            <div class="container-titulo">
                <div class="titulo">
                  <h3>Editar</h3>                                      
                </div>
            </div>
        </div>
    </div>							
    <div class="row">
            <div class="col-md-12">
                <form action="vehiculoEditarForm2.htm" method="post">
                    <div class="form-row">
                        <div class="form-group col-md-4">
                            <label>Nombre del vehiculo</label>                                                  
                            <input class="form-control" type="text" name="nombre" value="${listavehiculo.get(0).getNombre()}" >
                        </div>

                        <div class="form-group col-md-4">
                            <label>Costo del vehiculo</label>
                            <input class="form-control" type="text" name="costo" value="${listavehiculo.get(0).getCosto()}" >
                        </div>

                        <div class="form-group col-md-4">
                            <label>Precio de venta</label>
                            <input class="form-control" type="text" name="precio" value="${listavehiculo.get(0).getPrecio()}" >
                        </div>

                        <div class="form-group col-md-4">
                            <label>Matricula</label>
                            <input class="form-control" type="text" name="matricula" value="${listavehiculo.get(0).getMatricula()}" >
                        </div>

                        <div class="form-group col-md-4">
                            <label>Año de fabricación</label>
                            <input class="form-control" type="date" name="año" value="${listavehiculo.get(0).getAño()}" >
                        </div>
                        <div class="form-group col-md-4">
                            <label>Cilindraje</label>
                            <input class="form-control" type="text" name="cilindraje" value="${listavehiculo.get(0).getCilindraje()}" >
                        </div>
                        <div class="form-group col-md-4">
                            <label>Color</label>
                            <input class="form-control" type="text" name="color" value="${listavehiculo.get(0).getColor()}" >
                        </div>
                        <div class="form-group col-md-4">
                            <label>Numero de sillas</label>
                            <input class="form-control" type="text" name="sillas" value="${listavehiculo.get(0).getSillas()}" >
                        </div>
                        <div class="form-group col-md-4">
                            <label>Marca</label>
                            <input class="form-control" type="text" name="marca" value="${listavehiculo.get(0).getMarca()}" >
                        </div>
                        <div class="form-group col-md-4">
                            <label>Pais de fabricación</label>
                            <input class="form-control" type="text" name="pais" value="${listavehiculo.get(0).getPais()}" >
                        </div>
                    </div>
                    <input type="hidden" name="id" value="${listavehiculo.get(0).getId()}">                                              
                      <div class="col-md-12 text-center">
                            <input class="btn btn-primary" type="submit" value="EDITAR">
                        </div>
                </form>
            </div>
        </div>
    <div class="row">                      
        <div class="col-md-12 text-center">
            <p>${mensaje}</p>
        </div>  
    </div>
</div>
				
                        
  <jsp:include page="footer.jsp" />                        
