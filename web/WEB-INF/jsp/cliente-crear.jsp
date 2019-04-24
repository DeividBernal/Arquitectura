<jsp:include page="master-page.jsp" />


<div class="container">
    <div class="row">
        <div class="container-titulo">
            <div class="titulo">
              <h3>Crear</h3>
              <h1>Cliente</h1>
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
                        <label>Id o Nit de consesionario</label>
                        <input class="form-control" type="text" name="identificacion" placeholder="Identificación" required>
                    </div>
                    
                    <div class="form-group col-md-4">
                        <label>Primer Nombre</label>
                        <input class="form-control" type="text" name="nombre1" placeholder="Nombre 1" required>
                    </div>
                    
                    <div class="form-group col-md-4">
                        <label>Segundo Nombre</label>
                        <input class="form-control" type="text" name="nombre2" placeholder="Nombre 2" required>
                    </div>
                    
                    <div class="form-group col-md-4">
                        <label>Primer Apellido</label>
                        <input class="form-control" type="text" name="apellido1" placeholder="Apellido 1" required>
                    </div>
                    
                    <div class="form-group col-md-4">
                        <label>Segundo Apellido</label>
                        <input class="form-control" type="text" name="apellido2" placeholder="Apellido 2" required>
                    </div>
                    <div class="form-group col-md-4">
                        <label>Genero</label>
                        <input class="form-control" type="text" name="genero" placeholder="Genero" required="">
                    </div>
                    <div class="form-group col-md-4">
                        <label>Ocupación</label>
                        <input class="form-control" type="text" name="tipop" placeholder="Ocupación" required="">
                    </div>
                    <div class="form-group col-md-4">
                        <label>Fecha de Nacimiento</label>
                        <input class="form-control" type="date" name="fecha" placeholder="Fecha de Nacimiento" required="">
                    </div>
                    <div class="form-group col-md-4">
                        <label>Teléfono</label>
                        <input class="form-control" type="text" name="telefono" placeholder="Teléfono" required="">
                    </div>
                    <div class="form-group col-md-4">
                        <label>Email</label>
                        <input class="form-control" type="email" name="email" placeholder="E-mail" required="">
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