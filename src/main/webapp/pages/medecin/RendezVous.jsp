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
	<div id="index">
		<section id="counts" class="counts"
			style="margin-top: 50px; padding-bottom: 214px">

			<c:if test="${ !empty success }">
				<div class="alert alert-success alert-dismissible fade show container"
					role="alert" id="asuccess"
					style="margin-bottom: 50px; margin-top: 50px">
					<c:out value="${ success }"></c:out>
					<button type="button" class="close" data-dismiss="alert"
						aria-label="Close" onclick="close();">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
			</c:if>

			<c:if test="${ !empty error }">
				<div class="alert alert-danger alert-dismissible fade show container"
					role="alert" style="margin-bottom: 50px; margin-top: 50px"
					id="aerror">
					<c:out value="${ error }"></c:out>
					<button type="button" class="close" data-dismiss="alert"
						aria-label="Close" onclick="close();">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
			</c:if>
			<div class="section-title" style="margin-top: 60px">
				<h2>Demandes de rendez-vous</h2>
			</div>
			<div class="container display-flex justify-content-space-between">
				<c:forEach var="item" items="${ appointments }" varStatus="status">
					<div class="col-md-6 mt- ml-4 m-4"
						style="background-color: #fff; border-radius: 10px;">
						<div style="text-align: right; color: #888;">
							<c:out value="${ item.appointment.date }"></c:out>
						</div>
						<div class="cad-body"
							style="padding-top: 18px; padding-bottom: 15px;">
							<div class="row ">
								<div class="col-md-3">
									<img
										src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava3.webp"
										alt="avatar" class="rounded-circle img-fluid"
										style="width: 130px;" />
								</div>
								<div class="col-md-9">
									<div class="row">
										<div class="col-md-6">
											<div class="elt2">
												<c:out value="${ item.patient.name }"></c:out>
											</div>
											<div class="elt">
												<i class="fa fa-phone"></i> +237
												<c:out value="${ item.patient.phone }"></c:out>
											</div>
											<div class="elt">
												<i class="fa location"></i> Yaoundé, Cameroun
											</div>
											<div class="elt">
												<c:out value="${ item.appointment.type }"></c:out>
											</div>
										</div>
										<div class="col-md-3"
											style="margin-left: 12%; margin-top: 2%;">
											<div class="col-md-6 elt">
												<form action="" method="POST">
													<input type="hidden" name="action" value="updateStatus">
													<input type="hidden" name="idApp"
														value="<c:out value="${ item.appointment.idAppointment }"></c:out>">
													<input type="hidden" name="status" value="reject">
													<button type="submit" style="width: 87px; margin: 8px;"
														class="btn btn-danger">Rejetter</button>
												</form>
											</div>
											<div class="col-md-6 elt">
												<form action="" method="POST">
													<input type="hidden" name="action" value="updateStatus">
													<input type="hidden" name="idApp"
														value="<c:out value="${ item.appointment.idAppointment }"></c:out>">
													<input type="hidden" name="status" value="accept">
													<button type="submit"
														style="color: white; width: 89px; background-color: #1792b8; margin: 8px;"
														class="btn">Accepted</button>
												</form>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
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
	</div>
</body>
</html>