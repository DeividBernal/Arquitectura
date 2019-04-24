<jsp:include page="master-page.jsp" />

<div class="container">
    <div class="row">
        <div class="container-titulo">
            <div class="titulo">
              <h3>Editar</h3>
              <h1>Garantia</h1>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <form action="garantiaEditarForm1.htm" method="post">
                <div class="form-row">
                    <div class="form-group col-md-3 offset-md-3">
                        <label>Fecha de Compra</label>
                        <input class="form-control" type="date" name="fecha" placeholder="Fecha" required>
                    </div>

                    <div class="form-group col-md-3">
                        <label>Lugar</label>
                        <input class="form-control" type="text" name="lugar" placeholder="Lugar" required>
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
                <form action="garantiaEditarForm2.htm" method="post">
                    <div class="form-row">
                        <div class="form-group col-md-4">
                            <label>Fecha de compra</label>                                                  
                            <input class="form-control" type="date" name="fecha" value="${listaGarantia.get(0).getFecha()}" >
                        </div>

                        <div class="form-group col-md-4">
                            <label>Lugar</label>
                            <input class="form-control" type="text" name="lugar" value="${listaGarantia.get(0).getLugar()}" >
                        </div>

                        <div class="form-group col-md-4">
                            <label>Descripción</label>
                            <input class="form-control" type="text" name="descri" value="${listaGarantia.get(0).getDescri()}" >
                        </div>                   
                    </div>
                    <input type="hidden" name="id" value="${listaGarantia.get(0).getId()}">                                              
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
