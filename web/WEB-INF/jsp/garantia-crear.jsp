<jsp:include page="master-page.jsp" />


<div class="container">
    <div class="row">
        <div class="container-titulo">
            <div class="titulo">
              <h3>Crear</h3>
              <h1>Garantia</h1>
            </div>
        </div>
        <div class="col-md-12">
            <p>Ingrese todos los campos</p>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <form action="GarantiaRegistrar.htm" method="post">
                <div class="form-row">
                    <div class="form-group col-md-4">
                        <label>Fecha de compra</label>
                        <input class="form-control" type="date" name="fecha" placeholder="Fecha" required>
                    </div>
                    
                    <div class="form-group col-md-4">
                        <label>Lugar</label>
                        <input class="form-control" type="text" name="lugar" placeholder="Lugar" required>
                    </div>
                    
                    <div class="form-group col-md-4">
                        <label>Descripcion de producto</label>
                        <input class="form-control" type="text" name="descri" placeholder="Descri" required>
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