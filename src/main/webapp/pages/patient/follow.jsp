<!DOCTYPE html>
<html lang="en">

<%@ include file="../partials/head.jsp"%>

<body>

	<!-- ======= Header ======= -->
	<%@ include file="../partials/header.jsp"%>


	<!-- ======= Counts Section ======= -->
	<section id="counts" class="counts"
		style="margin-top: 120px; padding-bottom: 150px">

		<div class="section-title" style="margin-bottom: -80px">
			<h2>Following</h2>
			<p style="margin-left: 100px; margin-right: 100px">Les différents
				medécins que vous suivez</p>
		</div>


		<div class="wrapper">
			<div class="container">
				<div class="row">
					<c:forEach var="item" items="${ medecins }" varStatus="status">
						<div class="col-md-6 col-lg-4 mb-5">
							<div class="card mx-30">
								<img src="https://i.postimg.cc/WzjcC7Hb/1.jpg"
									class="card-img-top" alt="...">
								<div class="card-body">
									<p class="card-title"><c:out value="${ item.name }"></c:out></p>
									<p class="card-text">+237 <c:out value="${ item.phone }"></c:out>, <c:out value="${ item.email }"></c:out></p>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>


	</section>

	<div id="preloader"></div>
	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>

	<%@ include file="../partials/scripts.jsp"%>
</body>
</html>