
<!-- ======= Header ======= -->
<header id="header" class="fixed-top">
	<div class="container d-flex align-items-center">
		<%
		String sessionPage = (String) session.getAttribute("page");
		String patient = "";
		String agenda = "";
		String rdv = "";
		String profil ="";
		if (sessionPage.equals("patient")) {
			patient = "active";
		} else if (sessionPage.equals("agenda")) {
			agenda = "active";
		} else if (sessionPage.equals("rendez-vous")) {
			rdv = "active";
		} else if (sessionPage.equals("history")) {
			profil = "active";
		} else {
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
				<li><a class="nav-link scrollto <%out.print(patient);%>"
					href="Patient?page=patient">Patient</a></li>
				<li><a class="nav-link scrollto <%out.print(agenda);%>"
					href="Patient?page=agenda">Agenda</a></li>
				<li><a class="nav-link scrollto <%out.print(rdv);%>"
					href="Patient?page=RendezVous">Rendez-vous</a></li>
				<li><a class="nav-link scrollto <%out.print(profil);%>"
					href="Patient?page=profil">profil</a></li>
			</ul>
			<i class="bi bi-list mobile-nav-toggle"></i>
		</nav>
		<!-- .navbar -->

		<!-- <a href="Patient?page=appointment" class="appointment-btn scrollto"><span
			class="d-none d-md-inline">Make an</span> Appointment</a>-->

	</div>
</header>
<!-- End Header -->