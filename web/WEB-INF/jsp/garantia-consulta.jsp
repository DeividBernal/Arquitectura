<jsp:include page="master-page.jsp" />

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
    <div class="row">
        <div class="container-titulo">
            <div class="titulo">
              <h3>Consultar</h3>
              <h1>Garantia</h1>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <form action="garantiaConsultarForm.htm" method="post">
                <div class="form-row">
                    <div class="form-group col-md-3 offset-md-3">
                        <label>Fecha de compra</label>
                        <input class="form-control" type="date" name="fecha" placeholder="Fecha">
                    </div>
                    
                    <div class="form-group col-md-3">
                        <label>Lugar</label>
                        <input class="form-control" type="text" name="lugar" placeholder="Lugar">
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
                       <th>Fecha de compra</th>
                       <th>Lugar</th>
                       <th>Descripcion</th>                 
                    </tr>
                </thead>                                        
                <tbody>
                <c:forEach var="g" items="${listaGarantia}">                                           
                    <tr>
                        <td>${g.getFecha()}</td>
                        <td>${g.getLugar()}</td>
                        <td>${g.getDescri()}</td>                                                            
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div> 
    </div>
</div>

  <jsp:include page="footer.jsp" />   	