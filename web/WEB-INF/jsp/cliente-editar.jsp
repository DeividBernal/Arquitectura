<jsp:include page="master-page.jsp" />

<div class="container">
    <div class="row">
        <div class="container-titulo">
            <div class="titulo">
              <h3>Editar</h3>
              <h1>Cliente</h1>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <form action="personaEditarForm1.htm" method="post">
                <div class="form-row">
                    <div class="form-group col-md-3 offset-md-3">
                        <label>Identificación</label>
                        <input class="form-control" type="text" name="identificacion" placeholder="Identificación" required>
                    </div>

                    <div class="form-group col-md-3">
                        <label>Primer Nombre</label>
                        <input class="form-control" type="text" name="nombre1" placeholder="Nombre 1" required>
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
                <form action="personaEditarForm2.htm" method="post">
                    <div class="form-row">
                        <div class="form-group col-md-4">
                            <label>Identificación</label>                                                  
                            <input class="form-control" type="text" name="identificacion" value="${listaPersonas.get(0).getIdentificacion()}" >
                        </div>

                        <div class="form-group col-md-4">
                            <label>Primer Nombre</label>
                            <input class="form-control" type="text" name="nombre1" value="${listaPersonas.get(0).getNombre1()}" >
                        </div>

                        <div class="form-group col-md-4">
                            <label>Segundo Nombre</label>
                            <input class="form-control" type="text" name="nombre2" value="${listaPersonas.get(0).getNombre2()}" >
                        </div>

                        <div class="form-group col-md-4">
                            <label>Primer Apellido</label>
                            <input class="form-control" type="text" name="apellido1" value="${listaPersonas.get(0).getApellido1()}" >
                        </div>

                        <div class="form-group col-md-4">
                            <label>Segundo Apellido</label>
                            <input class="form-control" type="text" name="apellido2" value="${listaPersonas.get(0).getApellido2()}" >
                        </div>
                        <div class="form-group col-md-4">
                            <label>Genero</label>
                            <input class="form-control" type="text" name="genero" value="${listaPersonas.get(0).getGenero()}" >
                        </div>
                        <div class="form-group col-md-4">
                            <label>Ocupación</label>
                            <input class="form-control" type="text" name="tipop" value="${listaPersonas.get(0).getTipoP()}" >
                        </div>
                        <div class="form-group col-md-4">
                            <label>Fecha de Nacimiento</label>
                            <input class="form-control" type="date" name="fecha" value="${listaPersonas.get(0).getfNacimiento()}" >
                        </div>
                        <div class="form-group col-md-4">
                            <label>Teléfono</label>
                            <input class="form-control" type="text" name="telefono" value="${listaPersonas.get(0).getTelef()}" >
                        </div>
                        <div class="form-group col-md-4">
                            <label>Email</label>
                            <input class="form-control" type="email" name="email" value="${listaPersonas.get(0).getEmail()}" >
                        </div>
                    </div>
                    <input type="hidden" name="id" value="${listaPersonas.get(0).getId()}">                                              
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
