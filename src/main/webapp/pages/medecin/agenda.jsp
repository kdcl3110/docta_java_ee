<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ include file="../partials/head.jsp"%>
<body style="background-color: #f1f7fd;">

	<!-- ======= Header ======= -->

	<%@ include file="../nav-bar/headerMedecin.jsp"%>

	<!-- End Header -->

	<!-- End About Section -->

	<section id="counts" class="counts" style="padding-bottom: 150px">
		<c:if test="${ !empty success }">
			<div class="alert alert-success alert-dismissible fade show container"
				role="alert" id="asuccess" style="margin-top: 100px">
				<c:out value="${ success }"></c:out>
				<button type="button" class="close" data-dismiss="alert"
					aria-label="Close" onclick="close();">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
		</c:if>

		<c:if test="${ !empty error }">
			<div class="alert alert-danger alert-dismissible fade show container"
				role="alert" style="margin-top: 100px" id="aerror">
				<c:out value="${ error }"></c:out>
				<button type="button" class="close" data-dismiss="alert"
					aria-label="Close" onclick="close();">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
		</c:if>


		<div class="section-title"
			style="margin-bottom: -80px; margin-top: 120px;">
			<h2>Votre agenda</h2>
		</div>

		<div class="container display-flex justify-content-space-between"
			style="padding-top: 30px;">
			<c:forEach var="item" items="${ appointments }" varStatus="status">
				<div class="card-body col-md-6 mt- ml-4"
					style="background-color: #fff; border-radius: 8px; margin-top: 50px;">
					<div style="text-align: right; color: #888;">
						<c:out value="${ item.appointment.date }"></c:out>
					</div>
					<div class="cad-body">
						<div class="row">
							<div class="col-md-8">
								Hey docteur, vous avez un rendez-vous ce <span
									style="font-weight: bold;"> <c:out
										value="${ item.appointment.date }"></c:out>
								</span> dans la page <span style="font-weight: bold;"> <c:out
										value="${ item.appointment.houre }"></c:out>
								</span> avec <span style="font-weight: bold;"><c:out
										value="${ item.patient.name }"></c:out></span> pour sa
								<c:out value="${ item.appointment.type }"></c:out>
							</div>
							<c:if test='${ item.appointment.isFinis.equals("yes") }'>
								<div class="col-md-4 ">
									<img
										src="${pageContext.request.contextPath}/assets/img/check.png"
										style="width: 40px" />
								</div>
							</c:if>
						</div>
						<c:if test='${ item.appointment.isFinis.equals("no") }'>
							<div class="col-md-6 pull-right">
								<form action="" method="POST">
									<input type="hidden" name="action" value="finishTache">
									<input type="hidden" name="idApp"
										value="<c:out value="${ item.appointment.idAppointment }"></c:out>">
									<button type="submit"
										style="color: white; background-color: #1792b8" class="btn">Déclarer
										comme fait?</button>
								</form>
							</div>
						</c:if>
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

</body>
</html>