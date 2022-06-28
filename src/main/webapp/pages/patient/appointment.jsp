<!DOCTYPE html>
<html lang="en">

<%@ include file="../partials/head.jsp"%>

<body style="background-color: #f1f7fd;">


	<%@ include file="../partials/header.jsp"%>


	<!-- ======= Appointment Section ======= -->
	<section id="appointment" class="appointment section-bg"
		style="margin-top: 100px">
		<!-- <div class="container"> -->

		<div class="section-title">
			<h2>Make an Appointment</h2>
		</div>


		<form method="post" action="Patient">
			<div class="container">
				<div id="app">
					<step-navigation :steps="steps" :currentstep="currentstep">
					</step-navigation>

					<div v-show="currentstep == 1">
						<div class="container"
							style="background-color: #fff; border-radius: 0px; padding: 50px;">
							<div class="row justify-content-center">
								<div class="card" style="width: 18rem; margin-right: 20px">
									<div
										style="margin-top: 10px; margin-right: 10px; margin-left: 10px;">
										<label for="consultation" style="font-size: 2em;">Consultation</label>
										<p style="color: #666">effectuer une consultation</p>
									</div>
									<input type="radio" id="consultation" name="type"
										value="Consultation" style="margin-bottom: 5px">
								</div>

								<div class="card" style="width: 18rem;">
									<div
										style="margin-top: 10px; margin-right: 10px; margin-left: 10px;">
										<label for="prescription" style="font-size: 2em;">Prescription</label>
										<p style="color: #666">effectuer une prescription</p>
									</div>
									<input type="radio" id="prescription" name="type"
										value="Prescription" style="margin-bottom: 5px">
								</div>
							</div>
						</div>


					</div>

					<div v-show="currentstep == 2">
						<div class="container"
							style="background-color: #fff; border-radius: 0px; padding: 50px;">
							<div class="form-group">
								<label for="select">Médecin</label> <select class="form-control"
									name="medecin" id="imed" onchange="changeValue();">
									<c:forEach var="item" items="${ medecins }" varStatus="status">
										<option value='<c:out value="${ item.medecinId }"></c:out>'>
											<c:out value="Dr ${ item.name }" />
										</option>
									</c:forEach>
								</select>
							</div>
							<div class="form-group">
								<label for="select">Date</label> <br> <input type="date"
									class="form-control" name="date" id="idate"
									onchange="changeValue();">
							</div>
							<div class="form-group">
								<label for="select">Horaire</label> <br> <select
									class="form-control" name="houre" id="ihoure"
									onchange="changeValue();">
									<option value="08h - 10h">08h - 10h</option>
									<option value="10h30 - 12h30">10h30 - 12h30</option>
									<option value="13h - 15h">13h - 15h</option>
									<option value="15h30 - 17h30">15h30 - 17h30</option>
								</select>
							</div>
						</div>
					</div>

					<div v-show="currentstep == 3">
						<div class="form-group">
							<div class="container"
								style="background-color: #fff; border-radius: 0px; padding-top: 50px; padding-bottom: 50px">
								<div class="row">
									<div class="cad-body text-center col-md-3">
										<img
											src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava3.webp"
											alt="avatar" class="rounded-circle img-fluid"
											style="width: 150px;">
										<h5 class="my-3">
											<c:out value="${ patient.name }"></c:out>
										</h5>
									</div>
									<div class="col-9">
										<table class="table table-bordered">
											<tbody>
												<tr>
													<th scope="row">Type Rendez-vous</th>
													<td id="rc_type_rdv">----</td>
												</tr>
												<tr>
													<th scope="row">Médecin</th>
													<td id="rc_med">----</td>
												</tr>
												<tr>
													<th scope="row">Date</th>
													<td id="rc_date">----</td>
												</tr>
												<tr>
													<th scope="row">Heure</th>
													<td id="rc_heur">----</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>

						</div>
					</div>

					<step v-for="step in steps" :currentstep="currentstep"
						:key="step.id" :step="step" :stepcount="steps.length"
						@step-change="stepChanged"> </step>

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
                  <div class="step-wrapper" style="margin-left: 200px" :class="stepWrapperClass">
                      <button type="button" class="btn btn-primary" @click="lastStep" :disabled="firststep">
                          Précedent
                      </button>
                      <button type="button" class="btn btn-primary" @click="nextStep" :disabled="laststep">
                          Suivant
                      </button>
                      <button type="submit" class="btn btn-primary" v-if="laststep" style="float: right">
                          Soumettre
                      </button>
                  </div>
              </script>
				</div>
			</div>
		</form>
	</section>
	<!-- End Appointment Section -->



	<div id="preloader"></div>
	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>

	<%@ include file="../partials/scripts.jsp"%>
	<script type="text/javascript">
		 $(document).ready(function(){
			 $('input[name=type]').click(function(){
		          var val = $(this).attr("value");
				 console.log(val);
		          const rc_type_rdv = document.getElementById("rc_type_rdv");
		          rc_type_rdv.innerHTML = val;
		     });
		 });
			
		const changeValue = () => {
			document.getElementById("rc_date").innerHTML = document.getElementById("idate").value;
			document.getElementById("rc_heur").innerHTML = document.getElementById("ihoure").value;
			document.getElementById("rc_med").innerHTML = document.getElementById("imed").innerText;
		}
	</script>
</body>
</html>