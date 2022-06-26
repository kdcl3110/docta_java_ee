<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ include file="../partials/head.jsp" %>
<body>
	  <!-- ======= Header ======= -->
	  
	<%@ include file="../nav-bar/headerMedecin.jsp" %>
	
  <!-- End Header -->
  
  <!-- End About Section -->
  <section id="counts" class="counts" style="margin-top:120px; padding-bottom: 150px">
    <div>
      <h4 class="heading">
          Your agenda
      </h4>
  </div>
  <div class="container display-flex justify-content-space-between" style="padding-top: 100px;">
    <div class="card-body col-md-6 mt- ml-4" style="background-color: #fff; border-radius: 8px; margin-top: 50px;">
      <div class="elt3">22/06/2022</div>
      <div class="cad-body">
        <div class="row">
          <div class="col-md-8"> 
            Hey docteur, vous avez un rendez-vous ce <span style="font-weight: bold;">lundi le 2 avril 2022</span> à 
            <span style="font-weight: bold;">8h</span> avec <span style="font-weight: bold;">Kamdem Jules</span> pour sa consultation dentaire
          </div>
        </div>
        <div class="col-md-6 pull-right"><button type="button" style="color: white;" class="btn colo">Déclarer comme fait?</button></div>
      </div>
    </div>
    <div class="card-body col-md-6 mt- ml-4" style="background-color: #fff; border-radius: 8px; margin-top: 50px;">
      <div class="elt3">22/06/2022</div>
      <div class="cad-body">
        <div class="row">
          <div class="col-md-8"> 
            Hey docteur, vous avez un rendez-vous ce <span style="font-weight: bold;">lundi le 2 avril 2022</span> à 
            <span style="font-weight: bold;">8h</span> avec <span style="font-weight: bold;">Kamdem Jules</span> pour sa consultation dentaire
          </div>
        </div>
        <div class="col-md-6 pull-right"> <img class="mg" src="check.png" style="margin-bottom: 100px;"/> </div>
      </div>
    </div>
  </div>
</section>
<!-- End Counts Section -->


  <div id="preloader"></div>
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/purecounter/purecounter.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>
</html>