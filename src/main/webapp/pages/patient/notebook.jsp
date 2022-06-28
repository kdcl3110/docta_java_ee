<!DOCTYPE html>
<html lang="en">

<%@ include file="../partials/head.jsp"%>

<body style="background-color: #f1f7fd;">

	<!-- ======= Header ======= -->
	<%@ include file="../partials/header.jsp"%>


	<!-- ======= Counts Section ======= -->
	<section id="counts" class="counts"
		style="margin-top: 120px; padding-bottom: 4px">

		<div class="section-title">
			<h2>Mes demandes</h2>
		</div>

		<div class="container">
			<div class="row justify-content-center">
				<c:forEach var="item" items="${ appointments }" varStatus="status">
					<div class="col-md-5" style="padding: 10px">
						<div class="shadow-sm p-3 mb-2 bg-white rounded">
							<div class="row">
								<div class="col-9">
									<h5>
										<c:out value="${ item.appointment.type }"></c:out>
									</h5>
								</div>
								<div class="col-3">
									<c:out value="${ item.appointment.date }"></c:out>
								</div>
							</div>
							<div>
								<span> Vous avez envoyé une demande à <strong>Dr
										<c:out value="${ item.medecin.name }"></c:out>
								</strong> pour une plage horaire de <i> <c:out
											value="${ item.appointment.houre }"></c:out></i></span>
							</div>
							<div class="row align-items-end">
								<div class="col-9">
									<i>Statut:</i>
									<c:out value="${ item.appointment.houre }"></c:out>
								</div>
								<div class="col-3 ">
									<c:if test='${ item.appointment.type.equals("Consultation") }'>
										<img
											src="${pageContext.request.contextPath}/assets/img/loupe.png"
											style="width: 50px">
									</c:if>
									<c:if test='${ item.appointment.type.equals("Prescription") }'>
										<img
											src="${pageContext.request.contextPath}/assets/img/carnet.png"
											style="width: 50px">
									</c:if>
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
	<%@ include file="../partials/scripts.jsp"%>
</body>
</html>