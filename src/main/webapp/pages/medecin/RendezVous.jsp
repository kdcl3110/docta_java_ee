<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ include file="../partials/head.jsp" %>
<body>
	  <!-- ======= Header ======= -->
		<%@ include file="../nav-bar/headerMedecin.jsp" %>
  <!-- End Header -->

  <!-- ======= Counts Section ======= -->
  <div id="index">
  <section id="counts" class="counts" style="margin-top:50px; padding-bottom: 214px">
    <div>
        <h4 class="heading">
            List of the appointment
        </h4>
    </div>
    <div class="container display-flex justify-content-space-between">
        <div class="col-md-6 mt- ml-4" style="background-color: #fff; border-radius: 10px;">
            <div class="elt3">22/06/2022</div>
            <div class="cad-body" style="padding-top: 18px; padding-bottom: 15px;" >
                <div class="row ">
                    <div class="col-md-3">
                        <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava3.webp" alt="avatar"
                        class="rounded-circle img-fluid" style="width: 130px;"/>
                    </div>
                    <div class="col-md-7">
                        <div class="row">
                            <div class="col-md-5">                        
                                <div class="elt2">Kamdem jules</div>
                                <div class="elt"><i class="fa fa-phone"></i> +237 655 092 345</div>
                                <div class="elt"><i class="fa location"></i> Yaoundé, Cameroun</div>
                                <div class="elt">Consultation dentaire</div>
                            </div>
                            <div class="col-md-2" style="margin-left: 12%; margin-top: 9%;" >
                                <div class="col-md-6 elt"><button type="button"  style="width: 87px;" class="btn btn-danger">Rejeted</button></div>
                                <div class="col-md-6 elt"><button type="button" style="color: white; width: 87px;" class="btn colo">Accepted</button></div>
                            </div>
                        </div>
                    </div>
                </div>
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
</div>
</body>
</html>