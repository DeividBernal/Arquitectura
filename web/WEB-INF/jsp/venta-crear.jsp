<jsp:include page="master-page.jsp" />


<div class="container">
    <div class="row">
        <div class="container-titulo">
            <div class="titulo">
              <h3>Crear</h3>
              <h1>Venta</h1>
            </div>
        </div>
        <div class="col-md-12">
            <p>Ingrese todos los campos</p>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <form action="ventaRegistrar.htm" method="post">
                <div class="form-row">
                    <div class="form-group col-md-4">
                        <label>Fecha de venta</label>
                        <input class="form-control" type="date" name="fecha" placeholder="Fecha" required>
                    </div>
                    
                    <div class="form-group col-md-4">
                        <label>Precio de Venta</label>
                        <input class="form-control" type="text" name="precio" placeholder="Precio" required>
                    </div>
                    
                    <div class="form-group col-md-4">
                        <label>Cantidad</label>
                        <input class="form-control" type="text" name="cantidad" placeholder="Cantidad" required>
                    </div>
                    
                    <div class="form-group col-md-4">
                        <label>Marca</label>
                        <input class="form-control" type="text" name="marca" placeholder="Marca" required>
                    </div>
                    
                    <div class="form-group col-md-4">
                        <label>Descripcion</label>
                        <input class="form-control" type="text" name="descripcion" placeholder="Descripcion" required>
                    </div>
                    <div class="form-group col-md-4">
                        <label>Asesor o Vendedor</label>
                        <input class="form-control" type="text" name="asesor" placeholder="Asesor" required="">
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