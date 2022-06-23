<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords" content="">
<meta name="description" content="">

<title>DOCTA</title>
<!--
Snapshot Template
http://www.templatemo.com/tm-493-snapshot

Zoom Slider
https://vegas.jaysalvat.com/
Caption Hover Effects
http://tympanus.net/codrops/2013/06/18/caption-hover-effects/
-->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/animate.min.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/component.css">

<link rel="stylesheet" href="css/owl.theme.css">
<link rel="stylesheet" href="css/owl.carousel.css">
<link rel="stylesheet" href="css/vegas.min.css">
<link rel="stylesheet" href="css/style.css">

<!-- Google web font  -->
<link
	href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,700,300'
	rel='stylesheet' type='text/css'>

</head>
<body id="top" data-spy="scroll" data-offset="50"
	data-target=".navbar-collapse">


	<!-- Preloader section -->

	<div class="preloader">
		<div class="sk-spinner sk-spinner-pulse"></div>
	</div>


	<!-- Navigation section  -->

	<div class="navbar navbar-default navbar-fixed-top" role="navigation">
		<div class="container">

			<div class="navbar-header">
				<button class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="icon icon-bar"></span> <span class="icon icon-bar"></span>
					<span class="icon icon-bar"></span>
				</button>
				<a href="#top" class="navbar-brand smoothScroll">DOCTA</a>
			</div>
			<div class="collapse navbar-collapse">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#top" class="smoothScroll"><span>Home</span></a></li>
					<li><a href="#about" class="smoothScroll"><span>About</span></a></li>
					<li><a href="#gallery" class="smoothScroll"><span>Gallery</span></a></li>
					<li><a href="#contact" class="smoothScroll"><span>Contact</span></a></li>
					<li>
						<form action="home">
							<input type="hidden" name="page" value="login" />
							<button type="submit">
								<span>LOGIN</span>
							</button>
						</form>
					</li>
					<li>
						<!-- <a href="home?page=login"> gfyrgyfre </a>-->
						<form action="home">
							<input type="hidden" name="page" value="register" />
							<button type="submit">
								<span>SIGNUP</span>
							</button>
						</form>
					</li>
				</ul>
			</div>

		</div>
	</div>


	<!-- Home section -->

	<section id="home">
		<div class="overlay"></div>
		<div class="container">
			<div class="row">

				<div class="col-md-offset-1 col-md-10 col-sm-12 wow fadeInUp"
					data-wow-delay="0.3s">
					<h1 class="wow fadeInUp">
						<c:out value="${ userinfos }" />
					</h1>
					<h1 class="wow fadeInUp" data-wow-delay="0.6s">Free Doctor
						Appointment</h1>
					<p class="wow fadeInUp" data-wow-delay="0.9s">Talk with Doctor
						using our system. Take appointment, have a consultation, a
						prescription and get a notification comming from a Doctor. Thank
						you.</p>
					<form action="home">
						<input type="hidden" name="page" value="register" />
						<button
							style="width: 200px; height: 50px; background-color: #1792b8; color: #fff; border: none; font-size: 18px; margin-top: 50px">
							Get Started</button>
					</form>
				</div>

			</div>
		</div>
	</section>


	<!-- About section -->

	<section id="about">
		<div class="container">
			<div class="row">

				<div class="col-md-9 col-sm-8 wow fadeInUp" data-wow-delay="0.2s">
					<div class="about-thumb">
						<h1>Take an appointment</h1>
						<p>Post unlimited follow-ups to the doctor. Easily accessible
							via our comprehensive online appointment application vailable in
							web platform.</p>
					</div>
				</div>

				<div class="col-md-3 col-sm-4 wow fadeInUp about-img"
					data-wow-delay="0.6s">
					<img style="height: 280px" src="images/about-img.jpg"
						class="img-responsive img-circle" alt="About">
				</div>

				<div class="clearfix"></div>

				<div class="col-md-12 col-sm-12 wow fadeInUp" data-wow-delay="0.3s">
					<div class="section-title text-center">
						<h1>DOCTA Team</h1>
						<h3>Why you should trust us? Get know about us.</h3>
					</div>
				</div>

				<!-- team carousel -->
				<div id="team-carousel" class="owl-carousel">

					<div class="item col-md-4 col-sm-6 wow fadeInUp"
						data-wow-delay="0.4s">
						<div class="team-thumb">
							<div class="image-holder">
								<img style="width: 210px; height: 210px;"
									src="images/team-img1.png" class="img-responsive img-circle"
									alt="Mary">
							</div>
							<h2 class="heading">KOUNGOUE Loic, CHEF</h2>
							<p class="description">Developpeur Java 2EE, chargé de la
								gestion côté Back-End</p>
						</div>
					</div>

					<div class="item col-md-4 col-sm-6 wow fadeInUp"
						data-wow-delay="0.6s">
						<div class="team-thumb">
							<div class="image-holder">
								<img style="width: 210px; height: 210px;"
									src="images/team-img1.png" class="img-responsive img-circle"
									alt="Jack">
							</div>
							<h2 class="heading">NGOUNOU Loic, Vice CHEF</h2>
							<p class="description">Developpeur Java 2EE, chargé de la
								gestion côté Front-End</p>
						</div>
					</div>

					<div class="item col-md-4 col-sm-6 wow fadeInUp"
						data-wow-delay="0.8s">
						<div class="team-thumb">
							<div class="image-holder">
								<img style="width: 210px; height: 210px;"
									src="images/team-img1.png" class="img-responsive img-circle"
									alt="Linda">
							</div>
							<h2 class="heading">MAGUETSOP Denio, Assistante</h2>
							<p class="description">Developpeur Java 2EE, chargé de la
								gestion côté Front-End</p>
						</div>
					</div>

					<!-- end team carousel -->

				</div>
			</div>
	</section>


	<!-- Gallery section -->

	<section id="gallery">
		<div class="container">
			<div class="row">

				<div class="col-md-offset-2 col-md-8 col-sm-12 wow fadeInUp"
					data-wow-delay="0.3s">
					<div class="section-title">
						<h1>Gallery</h1>
						<!-- <p>Nullam scelerisque, quam nec iaculis vulputate, arcu ligula sollicitudin nisl, ac volutpat erat nulla a arcu.</p> -->
					</div>
				</div>

				<ul class="grid cs-style-4">
					<li class="col-md-6 col-sm-6">
						<figure>
							<div>
								<img style="height: px" src="images/gallery-img1.jpg"
									alt="image 1">
							</div>
							<figcaption>
								<h1>Stethoscope1</h1>
								<small>medical instrument used in listening to sounds
									produced within the body.</small>
							</figcaption>
						</figure>
					</li>

					<li class="col-md-6 col-sm-6">
						<figure>
							<div>
								<img src="images/gallery-img1.jpg" alt="image 2">
							</div>
							<figcaption>
								<h1>Stethoscope2</h1>
								<small>medical instrument used in listening to sounds
									produced within the body.</small>
							</figcaption>
						</figure>
					</li>

					<li class="col-md-6 col-sm-6">
						<figure>
							<div>
								<img src="images/gallery-img2.jpg" alt="image 3">
							</div>
							<figcaption>
								<h1>Stethoscope1 and Medecine</h1>
								<small>medical instrument used in listening to sounds
									produced within the body.</small>
							</figcaption>
						</figure>
					</li>

					<li class="col-md-6 col-sm-6">
						<figure>
							<div>
								<img src="images/gallery-img2.jpg" alt="image 4">
							</div>
							<figcaption>
								<h1>Stethoscope2 and Medecine</h1>
								<small>medical instrument used in listening to sounds
									produced within the body.</small>
							</figcaption>
						</figure>
					</li>
				</ul>

			</div>
		</div>
	</section>


	<!-- Contact section -->

	<section id="contact">
		<div class="container">
			<div class="row">

				<div class="col-md-offset-1 col-md-10 col-sm-12">

					<div style="margin-bottom: -50px"
						class="col-lg-offset-1 col-lg-10 section-title wow fadeInUp"
						data-wow-delay="0.4s">
						<h1>Contact Us</h1>
						<p>To constact us, just click on one of these Links.</p>
					</div>

					<!-- <form action="#" method="post" class="wow fadeInUp" data-wow-delay="0.8s">
          <div class="col-md-6 col-sm-6">
            <input name="name" type="text" class="form-control" id="name" placeholder="Name">
          </div>
          <div class="col-md-6 col-sm-6">
            <input name="email" type="email" class="form-control" id="email" placeholder="Email">
          </div>
          <div class="col-md-12 col-sm-12">
            <textarea name="message" rows="6" class="form-control" id="message" placeholder="Message"></textarea>
          </div>
          <div class="col-md-offset-3 col-md-6 col-sm-offset-3 col-sm-6">
            <input type="submit" class="form-control" value="SEND MESSAGE">
          </div>
        </form> -->
					<div style="margin-bottom: -150px" class="col-md-12 col-sm-12">

						<ul class="social-icon">
							<li><a href="#" class="fa fa-facebook wow fadeInUp"
								data-wow-delay="0.2s"></a></li>
							<li><a href="#" class="fa fa-twitter wow fadeInUp"
								data-wow-delay="0.4s"></a></li>
							<li><a href="#" class="fa fa-linkedin wow fadeInUp"
								data-wow-delay="0.6s"></a></li>
							<li><a href="#" class="fa fa-instagram wow fadeInUp"
								data-wow-delay="0.8s"></a></li>
							<li><a href="#" class="fa fa-google-plus wow fadeInUp"
								data-wow-delay="1.0s"></a></li>
						</ul>
					</div>


				</div>

			</div>
		</div>
	</section>


	<!-- Footer section -->

	<footer>
		<div class="container">

			<div class="row">

				<div class="col-md-12 col-sm-12">

					<!-- <ul class="social-icon"> 
                    <li><a href="#" class="fa fa-facebook wow fadeInUp" data-wow-delay="0.2s"></a></li>
                    <li><a href="#" class="fa fa-twitter wow fadeInUp" data-wow-delay="0.4s"></a></li>
                    <li><a href="#" class="fa fa-linkedin wow fadeInUp" data-wow-delay="0.6s"></a></li>
                    <li><a href="#" class="fa fa-instagram wow fadeInUp" data-wow-delay="0.8s"></a></li>
                    <li><a href="#" class="fa fa-google-plus wow fadeInUp" data-wow-delay="1.0s"></a></li>
                </ul> -->

					<p class="wow fadeInUp" data-wow-delay="1s">
						Copyright &copy; 2022 DOCTA | Design: <a href="#"
							title="free css templates" target="_blank">Le Mignon</a>
					</p>

				</div>

			</div>

		</div>
	</footer>

	<!-- Back top -->
	<a href="#" class="go-top"><i class="fa fa-angle-up"></i></a>

	<!-- Javascript  -->
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/vegas.min.js"></script>
	<script src="js/modernizr.custom.js"></script>
	<script src="js/toucheffects.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/smoothscroll.js"></script>
	<script src="js/wow.min.js"></script>
	<script src="js/custom.js"></script>

</body>
</html>