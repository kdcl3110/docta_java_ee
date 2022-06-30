<!-- ======= Top Bar ======= -->
  <div id="topbar" class="d-flex align-items-center fixed-top">
    <div class="container d-flex justify-content-between">
      <div class="contact-info d-flex align-items-center">
        <i class="bi bi-envelope"></i> <a href="mailto:contact@example.com">docta@gmail.com</a>
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
  
<!-- ======= Header ======= -->
<header id="header" class="fixed-top">
	<div class="container d-flex align-items-center">
		<%
		String sessionPage = (String) session.getAttribute("page");
		String das = "";
		String patient = "";
		String agenda = "";
		String rdv = "";
		String profil ="";
		if (sessionPage.equals("dashboard")) {
			das = "active";
		}
		else if (sessionPage.equals("patient")) {
			patient = "active";
		} else if (sessionPage.equals("agenda")) {
			agenda = "active";
		} else if (sessionPage.equals("RendezVous")) {
			rdv = "active";
		} else if (sessionPage.equals("history")) {
			profil = "active";
		} else {
			das = "";
			patient = "";
			agenda = "";
			rdv = "";
			profil ="";
		}
		%>
		<h1 class="logo me-auto">
			<a href="index.html">DOCTA</a>
		</h1>
		<!-- Uncomment below if you prefer to use an image logo -->
		<!-- <a href="index.html" class="logo me-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
		<nav id="navbar" class="navbar order-last order-lg-0">
			<ul>
				<li><a class="nav-link scrollto <%out.print(das);%>"
					href="Medecin?page=dashboard">Dashboard</a></li>
				<li><a class="nav-link scrollto <%out.print(patient);%>"
					href="Medecin?page=patient">Mes patients</a></li>
				<li><a class="nav-link scrollto <%out.print(agenda);%>"
					href="Medecin?page=agenda">Agenda</a></li>
				<li><a class="nav-link scrollto <%out.print(rdv);%>"
					href="Medecin?page=RendezVous">Rendez-vous</a></li>
			</ul>
			<i class="bi bi-list mobile-nav-toggle"></i>
		</nav>
		<!-- .navbar -->

		<!-- <a href="Patient?page=appointment" class="appointment-btn scrollto"><span
			class="d-none d-md-inline">Make an</span> Appointment</a>-->

	</div>
</header>
<!-- End Header -->