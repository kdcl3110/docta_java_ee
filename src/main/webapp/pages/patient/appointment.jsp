<!DOCTYPE html>
<html lang="en">

<%@ include file="../partials/head.jsp" %>

<body>

  <!-- ======= Top Bar ======= -->
  <div id="topbar" class="d-flex align-items-center fixed-top">
    <div class="container d-flex justify-content-between">
      <div class="contact-info d-flex align-items-center">
        <i class="bi bi-envelope"></i> <a href="mailto:contact@example.com">ngounouloic675@gmail.com</a>
        <i class="bi bi-phone"></i> +237 697161353
      </div>
      <div class="d-none d-lg-flex social-links align-items-center">
        <a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
        <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
        <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
        <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></i></a>
      </div>
    </div>
  </div>

	<%@ include file="../partials/header.jsp" %>


  <!-- ======= Appointment Section ======= -->
  <section id="appointment" class="appointment section-bg" style="margin-top: 100px">
    <!-- <div class="container"> -->

      <div class="section-title">
        <h2>Make an Appointment</h2>
        <p style="margin-left: 100px; margin-right: 100px">Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p>
      </div>

  
    <form method="POST" action="">
      <div class="container">
          <div id="app">
              <step-navigation :steps="steps" :currentstep="currentstep">
              </step-navigation>
              
              <div v-show="currentstep == 1">
                <h2 style="margin-bottom: 40px">Type de rendez-vous</h2>
                <input type="radio" id="consultation" name="fav_rendezvous" value="Consultation">
                <label for="consultation">Consultation</label><br>
                <input type="radio" id="prescription" name="fav_rendezvous" value="Prescription">
                <label for="prescription">Prescription</label><br>
              </div>
      
              <div v-show="currentstep == 2">
                  <h2 style="margin-bottom: 40px">Choix du médecin et horaires</h2>
                  <div class="form-group">
                      <label for="select">Médecin</label>
                      <select class="form-control" name="select">
                          <option>Dr. KOUNGOUE Christian</option>
                          <option>Dr. MAGUETSOP Denio</option>
                          <option>Dr. NGASSA Cyrille</option>
                          <option>Dr. TSINDA Onesime</option>
                          <option>Dr. MAFFO Patricia</option>
                      </select>
                  </div>
                  <div class="form-group">
                    <label for="select">Horaire</label>
                    <select class="form-control" name="select">
                        <option>Lundi: 10h - 12h</option>
                        <option>Mardi: 08h - 13h</option>
                        <option>Mercredi: 12h - 13h</option>
                        <option>Vendredi: 15h - 16h</option>
                        <option>Samedi: 09h - 10h</option>
                    </select>
                </div>
              </div>
      
              <div v-show="currentstep == 3">
                  <h2 style="margin-bottom: 40px">Recapitulatif</h2>
                  <div class="form-group">
                    <div class="container">
                      <ul class="responsive-table">
                        <li class="table-header">
                          <div class="col col-1">ID</div>
                          <div class="col col-2">Type Rendez-vous</div>
                          <div class="col col-2">Médecin</div>
                          <div class="col col-3">Jour et Horaire</div>
                        </li>
                        <li class="table-row">
                          <div class="col col-1" data-label="Job Id">1</div>
                          <div class="col col-1" data-label="Type">Consultation</div>
                          <div class="col col-2" data-label="Doctor Name">Dr. TSINDA Onesime</div>
                          <div class="col col-3" data-label="Day Hour">Mercredi: 12h - 13h</div>
                        </li>
                      </ul>
                    </div>
                  </div>
              </div>
      
              <step v-for="step in steps" :currentstep="currentstep" :key="step.id" :step="step" :stepcount="steps.length" @step-change="stepChanged">
              </step>
      
              <script type="x-template" id="step-navigation-template">
                  <ol class="step-indicator">
                      <li v-for="step in steps" is="step-navigation-step" :key="step.id" :step="step" :currentstep="currentstep">
                      </li>
                  </ol>
              </script>
      
              <script type="x-template" id="step-navigation-step-template">
                  <li :class="indicatorclass">
                      <div class="step"><i :class="step.icon_class"></i></div>
                      <div class="caption hidden-xs hidden-sm">Step <span v-text="step.id"></span>: <span v-text="step.title"></span></div>
                  </li>
              </script>
      
              <script type="x-template" id="step-template">
                  <div class="step-wrapper" :class="stepWrapperClass">
                      <button type="button" class="btn btn-primary" @click="lastStep" :disabled="firststep">
                          Back
                      </button>
                      <button type="button" class="btn btn-primary" @click="nextStep" :disabled="laststep">
                          Next
                      </button>
                      <button type="submit" class="btn btn-primary" v-if="laststep" style="float: right">
                          Soumettre
                      </button>
                  </div>
              </script>
          </div>
      </div>
  </section>
  <!-- End Appointment Section -->


<!-- ======= Footer ======= -->
<footer id="footer">
    <div class="footer-top py-2">
    <div class="container d-md-flex py-4">

      <div class="me-md-auto text-center text-md-start">
        <div class="copyright">
          &copy; Copyright <strong><span>Groupe6</span></strong>. All Rights Reserved
        </div>
        <div class="credits">
          <!-- All the links in the footer should remain intact. -->
          <!-- You can delete the links only if you purchased the pro version. -->
          <!-- Licensing information: https://bootstrapmade.com/license/ -->
          <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/medilab-free-medical-bootstrap-theme/ -->
          Designed by <a href="https://bootstrapmade.com/">LeMignon</a>
        </div>
      </div>
      <div class="social-links text-center text-md-right pt-3 pt-md-0">
        <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
        <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
        <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
        <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
        <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
      </div>
    </div>
    </div>
  </footer><!-- End Footer -->

  <div id="preloader"></div>
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>


<%@ include file="../partials/scripts.jsp" %>
</body>
</html>