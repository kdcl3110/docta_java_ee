
<!-- ======= Header ======= -->
<header id="header" class="fixed-top">
	<div class="container d-flex align-items-center">

		<%
		String sessionPage = (String) session.getAttribute("page");
		String das = "";
		String note = "";
		String fol = "";
		String his = "";
		String appointment = "";
		if (sessionPage.equals("dashboard")) {
			das = "active";
		} else if (sessionPage.equals("notebook")) {
			note = "active";
		} else if (sessionPage.equals("follow")) {
			fol = "active";
		} else if (sessionPage.equals("history")) {
			his = "active";
		} else {
			das = "";
			note = "";
			fol = "";
			his = "";
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
					href="Patient?page=dashboard">Dashboard</a></li>
				<li><a class="nav-link scrollto <%out.print(note);%>"
					href="Patient?page=notebook">Note Book</a></li>
				<li><a class="nav-link scrollto <%out.print(fol);%>"
					href="Patient?page=follow">Follow</a></li>
				<li><a class="nav-link scrollto <%out.print(his);%>"
					href="Patient?page=history">Historique</a></li>
			</ul>
			<i class="bi bi-list mobile-nav-toggle"></i>
		</nav>
		<!-- .navbar -->

		<a href="Patient?page=appointment" class="appointment-btn scrollto"><span
			class="d-none d-md-inline">Make an</span> Appointment</a>

	</div>
</header>
<!-- End Header -->