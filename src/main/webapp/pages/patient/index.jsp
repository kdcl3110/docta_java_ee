<!DOCTYPE html>
<html lang="en">

<%@ include file="../partials/head.jsp"%>

<body style="background-color: #f1f7fd;">


	<%@ include file="../partials/header.jsp"%>

	<!-- End About Section -->

	<!-- ======= Counts Section ======= -->
	<section id="counts" class="counts"
		style="margin-top: 120px; padding-bottom: 214px">
		<div class="container display-flex justify-content-space-between">
			<c:if test="${ !empty success }">
				<div class="alert alert-success alert-dismissible fade show"
					role="alert" id="asuccess" style="margin-bottom: 50px">
					<c:out value="${ success }"></c:out>
					<button type="button" class="close" data-dismiss="alert"
						aria-label="Close" onclick="close();">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
			</c:if>

			<c:if test="${ !empty error }">
				<div class="alert alert-danger alert-dismissible fade show"
					role="alert" style="margin-bottom: 50px" id="aerror">
					<c:out value="${ error }"></c:out>
					<button type="button" class="close" data-dismiss="alert"
						aria-label="Close" onclick="close();">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
			</c:if>

			<div class="row">
				<div class="col-md-3"
					style="background-color: #fff; border-radius: 0px; padding-top: 50px; padding-bottom: 50px">

					<div class="cad-body text-center">
						<img
							src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava3.webp"
							alt="avatar" class="rounded-circle img-fluid"
							style="width: 150px;">
						<h5 class="my-3"><c:out value="${ patient.name }"></c:out></h5>
						<p class="text-muted mb-1">Compte Patient</p>
						<p class="text-muted mb-4">Yaoundé, Cameroun</p>
						<div class="d-flex justify-content-center mb-2">
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







	<div id="preloader"></div>
	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>
	<script>
		const close = () => {
			document.getElementById("asuccess").style.display = "none";
			document.getElementById("aerror").style.display = "none";	
		}
	</script>
	<%@ include file="../partials/scripts.jsp"%>
</body>
</html>