<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ include file="../partials/head.jsp"%>
<body style="background-color: #f1f7fd;">

	<!-- ======= Header ======= -->

	<%@ include file="../nav-bar/headerMedecin.jsp"%>

	<!-- End Header -->

	<!-- ======= Counts Section ======= -->
	<section id="counts" class="counts"
		style="margin-top: 50px; padding-bottom: 214px; padding-top: 130px">
		<div class="container display-flex justify-content-space-between">
			<div class="section-title">
				<h2>Vos patients</h2>
			</div>
			<div class="row">
				<c:forEach var="item" items="${ patients }" varStatus="status">
					<div class="col-md-3 mt-3 ml-4"
						style="background-color: #fff; border-radius: 0px; padding-top: 20px; padding-bottom: 5px">
						<div class="cad-body text-center">
							<img
								src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava3.webp"
								alt="avatar" class="rounded-circle img-fluid"
								style="width: 130px;">
							<h5 class="my-3">
								<c:out value="${ item.name }"></c:out>
							</h5>
							<p class="text-muted mb-1">
								+237
								<c:out value="${ item.phone }"></c:out>
							</p>
							<p class="text-muted mb-4">Yaoundé, Cameroun</p>
							<div class="d-flex justify-content-center mb-2">
								<button type="button" style="width: 150px; background: #1792b8;"
									class="btn" data-toggle="modal" data-target="#myModal">Voir
									plus</button>
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
					</div>
				</c:forEach>
			</div>
		</div>
	</section>
	<!-- End Counts Section -->



	<div id="preloader"></div>
	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>

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