<jsp:include page="master-page.jsp" />

<div class="container">
    <div class="row">
        <div class="container-titulo">
            <div class="titulo">
              <h3>Editar</h3>
              <h1>Venta</h1>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <form action="ventaEditarForm1.htm" method="post">
                <div class="form-row">
                    <div class="form-group col-md-3 offset-md-3">
                        <label>Fecha</label>
                        <input class="form-control" type="date" name="fecha" placeholder="Fecha" required>
                    </div>

                    <div class="form-group col-md-3">
                        <label>Precio de Venta</label>
                        <input class="form-control" type="text" name="precio" placeholder="Precio" required>
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
                <form action="ventaEditarForm2.htm" method="post">
                    <div class="form-row">
                        <div class="form-group col-md-4">
                            <label>Fecha</label>                                                  
                            <input class="form-control" type="date" name="fecha" value="${listaVenta.get(0).getFecha()}" >
                        </div>

                        <div class="form-group col-md-4">
                            <label>Precio de Venta</label>
                            <input class="form-control" type="text" name="precio" value="${listaVenta.get(0).getPrecio()}" >
                        </div>

                        <div class="form-group col-md-4">
                            <label>Cantidad</label>
                            <input class="form-control" type="text" name="cantidad" value="${listaVenta.get(0).getCantidad()}" >
                        </div>

                        <div class="form-group col-md-4">
                            <label>Marca</label>
                            <input class="form-control" type="text" name="marca" value="${listaVenta.get(0).getMarca()}" >
                        </div>

                        <div class="form-group col-md-4">
                            <label>Descripcion</label>
                            <input class="form-control" type="text" name="descripcion" value="${listaVenta.get(0).getDescripcion()}" >
                        </div>
                        <div class="form-group col-md-4">
                            <label>Asesor</label>
                            <input class="form-control" type="text" name="asesor" value="${listaVenta.get(0).getAsesor()}" >
                        </div>                        
                    </div>
                    <input type="hidden" name="id" value="${listaVenta.get(0).getId()}">                                              
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
