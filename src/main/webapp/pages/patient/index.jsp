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
				<a href="#" class="twitter"><i class="bi bi-twitter"></i></a> <a
					href="#" class="facebook"><i class="bi bi-facebook"></i></a> <a
					href="#" class="instagram"><i class="bi bi-instagram"></i></a> <a
					href="#" class="linkedin"><i class="bi bi-linkedin"></i></i></a>
			</div>
		</div>
	</div>

	<%@ include file="../partials/header.jsp"%>


	</section>
	<!-- End About Section -->

	<!-- ======= Counts Section ======= -->
	<section id="counts" class="counts"
		style="margin-top: 120px; padding-bottom: 214px">
		<div class="container display-flex justify-content-space-between">

			<div class="row">
				<div class="col-md-3"
					style="background-color: #fff; border-radius: 0px; padding-top: 50px; padding-bottom: 50px">

					<div class="cad-body text-center">
						<img
							src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava3.webp"
							alt="avatar" class="rounded-circle img-fluid"
							style="width: 150px;">
						<h5 class="my-3">Ebenezer</h5>
						<p class="text-muted mb-1">Compte Patient</p>
						<p class="text-muted mb-4">Yaoundé, Cameroun</p>
						<div class="d-flex justify-content-center mb-2">
							<!-- <button type="button" class="btn btn-primary">Follow</button>
                  <button type="button" class="btn btn-outline-primary ms-1">Message</button> -->
							<button type="button"
								style="width: 150px; color: white; background-color: #1792b8"
								class="btn btn-priary" data-toggle="modal"
								data-target="#myModal">Editer</button>
						</div>
					</div>
					<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
						aria-labelledby="myModalLabel">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h4 class="modal-title" id="myModalLabel">Modal title</h4>
								</div>
								<div class="modal-body">...</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-default"
										data-dismiss="modal">Close</button>
									<button type="button" class="btn btn-primary">Save
										changes</button>
								</div>
							</div>
						</div>
					</div>
					<!-- </div>
          </div> -->


				</div>
				<div class="col-md-9">
					<div class="row">
						<div class="col-lg-3 col-md-6">
							<div class="count-box">
								<i class="fas fa-user-md"></i> <span data-purecounter-start="0"
									data-purecounter-end="85" data-purecounter-duration="1"
									class="purecounter"></span>
								<p>Rendez-vous</p>
							</div>
						</div>

						<div class="col-lg-3 col-md-6 mt-5 mt-md-0">
							<div class="count-box">
								<i class="far fa-hospital"></i> <span data-purecounter-start="0"
									data-purecounter-end="18" data-purecounter-duration="1"
									class="purecounter"></span>
								<p>Prescriptions</p>
							</div>
						</div>

						<div class="col-lg-3 col-md-6 mt-5 mt-lg-0">
							<div class="count-box">
								<i class="fas fa-flask"></i> <span data-purecounter-start="0"
									data-purecounter-end="12" data-purecounter-duration="1"
									class="purecounter"></span>
								<p>Consultations</p>
							</div>
						</div>

						<div class="col-lg-3 col-md-6 mt-5 mt-lg-0">
							<div class="count-box">
								<i class="fas fa-award"></i> <span data-purecounter-start="0"
									data-purecounter-end="150" data-purecounter-duration="1"
									class="purecounter"></span>
								<p>Awards</p>
							</div>
						</div>
					</div>
				</div>

			</div>

		</div>
	</section>
	<!-- End Counts Section -->











	<!-- ======= Footer ======= -->
	<footer id="footer">

		<div class="footer-top py-2">
			<div class="container d-md-flex py-4">

				<div class="me-md-auto text-center text-md-start">
					<div class="copyright">
						&copy; Copyright <strong><span>Groupe6</span></strong>. All Rights
						Reserved
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
					<a href="#" class="twitter"><i class="bx bxl-twitter"></i></a> <a
						href="#" class="facebook"><i class="bx bxl-facebook"></i></a> <a
						href="#" class="instagram"><i class="bx bxl-instagram"></i></a> <a
						href="#" class="google-plus"><i class="bx bxl-skype"></i></a> <a
						href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
				</div>
			</div>
		</div>
	</footer>
	<!-- End Footer -->

	<div id="preloader"></div>
	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>

	<%@ include file="../partials/scripts.jsp"%>
</body>
</html>