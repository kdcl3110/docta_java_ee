<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- ======= Header ======= -->
  <header id="header" class="fixed-top">
    <div class="container d-flex align-items-center">

      <h1 class="logo me-auto"><a href="index.html">DOCTA</a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo me-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

      <nav id="navbar" class="navbar order-last order-lg-0">
        <ul>
          <li><a class="nav-link scrollto" href="patient.html">Patient</a></li>
          <li><a class="nav-link scrollto" href="#index">Consulatation</a></li>
          <li><a class="nav-link scrollto" href="RendezVous.html">Mes Rendez-vous</a></li>
          <li><a class="nav-link scrollto" href="agenda.html">Agenda</a></li>
          <li><a class="nav-link scrollto" href="profil.html">Profil</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

      <a href="appointment.html" class="appointment-btn scrollto" style="text-decoration: none" data-toggle="modal" data-target="#myModal"><span class="d-none d-md-inline">Make an</span> consultation</a>

    </div>
  </header>
  <!-- End Header -->


  <!-- ======= Counts Section ======= -->
  <div id="index">
    <section id="counts" class="counts" style="margin-top:50px; padding-bottom: 214px">
      <div>
          <h4 class="heading">
              List of the consultation
          </h4>
      </div>
     <div class="container display-flex justify-content-space-between">
        <a href="appointment.html" class="appointment-btn pull-right scrollto" style="text-decoration: none" data-toggle="modal" data-target="#myModal"><span class="d-none d-md-inline">Make an</span> consultation</a>
        <div class="card-body col-md-6 mt- ml-4" style="background-color: #fff; border-radius: 10px;">
          <div class="cad-body" style="padding-top: 18px; padding-bottom: 15px;" >
            <div class="row ">
              <div class="col-md-4">
                <img src="stetescope.jpeg" alt="avatar"
                class="img-fluid" style="width: 170px;"/>
              </div>
              <div class="col-md-8">                       
                <div class="elt2">Kamdem jules</div>
                <div class="elt"><i class="fa fa-phone"></i> +237 655 092 345</div>
                <div class="elt">Consultation dentaire</div>
                <div class="elt"><span style="font-weight: bold;">Effectué le</span> 05/06/2022 </div>
                <div class="elt"><span style="font-weight: bold;">Prochain rendez-vous</span> 05/06/2022 </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div id="myModal" class="modal fade" role="dialog">
    <div class="modal-dialog">

      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title">Create consultation</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <div class="modal-body">
          <div>
            <label>Select a patient</label>
            <select class="form-select" aria-label="Default select example">
              <option selected>Kamga Marlin</option>
              <option value="1">Noe Old</option>
              <option value="2">Styvee Dorcas</option>
              <option value="3">Aimee Togo</option>
            </select>
          </div>
          <div class="row" style="margin: 30px;">
            <div class="col-md-6"><button type="button"  style="width: 87px;" class="btn btn-danger">Rejeted</button></div>
            <div class="col-md-6"><button type="button"  style="color: white; width: 87px;" class="btn">Accepted</button></div>
        </div>
        </div>
        <!-- <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div> -->
      </div>

    </div>
      </div>
    </section>
    <!-- End Counts Section -->
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