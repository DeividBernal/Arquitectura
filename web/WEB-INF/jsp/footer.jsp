<!-- Footer -->
<footer>
  <div class="container">
    <div class="row">
      <div class="col-xs-12 col-md-3 brand-footer">
        <img src="images/logo.png" class="img-fluid" alt="">
        <p class="text-justify">
          ¡Bienvenido VehiAlpes!
        </p>
      </div>
      <div class="col-xs-12 offset-md-5 col-md-4">
        <h5>HORARIOS DE ATENCIÓN:</h5>
        <ul class="list-unstyled quick-links">
          <li>Lunes: 8:30am - 7:00pm</li>
          <li>Martes: 8:30am - 7:00pm</li>
          <li>Miércoles: 8:30am - 7:00pm</li>
          <li>Jueves: 8:30am - 7:00pm</li>
          <li>Viernes: 8:30am - 7:00pm</li>
          <li>Sábado: 8:30am - 7:00pm</li>
          <li>Domingos y Festivos: 10:00am - 2:00pm</li>
        </ul>
      </div>
    </div>
  </div>
</footer>
  <!-- ./Footer -->

<div class="buttom-bar">
  <div class="bottom-legal">
      <p>Todos los derechos reservados. Copyright 2019. Deivid Bernal</p> 
  </div>
</div>      

 <!-- ./Boton ir arriba -->
<span class="ir-arriba fa fa-angle-up"></span>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
    $(document).ready(function(){
	var altura = $('.navbar').offset().top;
        
	$(window).on('scroll', function(){
		if ( $(window).scrollTop() > altura ){
			$('.navbar').addClass('navbar-fixed');
      $('.brand-desktop').addClass('brand-scroll');
      $('.nav-item').addClass('padding-top-scroll');
		} else {
			$('.navbar').removeClass('navbar-fixed');
      $('.brand-desktop').removeClass('brand-scroll');
      $('.nav-item').removeClass('padding-top-scroll');
		}
	});

        
          
        $('.ir-arriba').click(function(){
          $('body, html').animate({
            scrollTop: '0px'
          }, 300);
        });
 
  $(window).scroll(function(){
    if( $(this).scrollTop() > 0 ){
      $('.ir-arriba').slideDown(300);
    } else {
      $('.ir-arriba').slideUp(300);
    }
  });
  $('#carousel-principal').carousel({
        interval: 2000
    });
});
</script>

</body>	
</html>