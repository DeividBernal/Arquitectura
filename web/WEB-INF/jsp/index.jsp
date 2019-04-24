<jsp:include page="master-page.jsp" />
<div id="carousel-principal" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carousel-principal" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-principal" data-slide-to="1"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <div class="container-titulo-carousel">
        <h2 class="animated fadeInDown">BIENVENIDOS A</h2>
        <h1 class="animated fadeInUp">VEHIALPES</h1>
        <h2 class="animated fadeInDown">VEHICULOS Y AUTOPARTES</h2>
      </div>
      <div class="impo-item-carousel"></div>
      <img class="d-block w-100" src="images/c3.jpg" alt="">
    </div>
    <div class="carousel-item">
      <div class="container-titulo-carousel">
        <h2 class="animated fadeInDown">PROFESIONALES</h2>
        <h1 class="animated fadeInUp">A SU SERVICIO</h1>
        <h2 class="animated fadeInDown">CALIDAD CERTIFICADA</h2>
      </div>
      <div class="impo-item-carousel"></div>
      <img class="d-block w-100" src="images/auto2.jpg" alt="">
    </div>
  </div>

  <a class="carousel-control-prev" href="#carousel-principal" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true">
          <i class="fas fa-chevron-left"></i>
      </span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carousel-principal" role="button" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true">
          <i class="fas fa-chevron-right"></i>
      </span>
    <span class="sr-only">Next</span>
  </a>
</div>
        
  <jsp:include page="footer.jsp" />      
	