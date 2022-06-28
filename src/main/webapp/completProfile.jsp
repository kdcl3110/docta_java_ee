<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Login V1</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="images/icons/favicon.ico" />
    <!--===============================================================================================-->
    <link
      rel="stylesheet"
      type="text/css"
      href="vendor/bootstrap/css/bootstrap.min.css"
    />
    <!--===============================================================================================-->
    <link
      rel="stylesheet"
      type="text/css"
      href="fonts/font-awesome-4.7.0/css/font-awesome.min.css"
    />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css" />
    <!--===============================================================================================-->
    <link
      rel="stylesheet"
      type="text/css"
      href="vendor/css-hamburgers/hamburgers.min.css"
    />
    <!--===============================================================================================-->
    <link
      rel="stylesheet"
      type="text/css"
      href="vendor/select2/select2.min.css"
    />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="css/util.css" />
    <link rel="stylesheet" type="text/css" href="css/main.css" />
    <!--===============================================================================================-->
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <script>
        $(document).ready(function(){
            let val = "yellow";
            let target = $("." + val);
            $(".msg").not(target).hide();
            $(target).show();
        $('input[name=test]').click(function(){
          var val = $(this).attr("value");
          var target = $("." + val);
          $(".msg").not(target).hide();
          $(target).show();
        });
      });
        </script>
  </head>
  <body>
    <div class="limiter">
      <div class="container-login100">
        <div class="wrap-login100">
          <div class="login100-pic js-tilt" data-tilt>
            <div class="slider-container">
                <div class="menu">
                    <label for="slide-dot-1"></label>
                    <label for="slide-dot-2"></label>
                    <label for="slide-dot-3"></label>
                </div>
                <input class="slide-input" id="slide-dot-1" type="radio" name="slides" checked>
                <img class="slide-img"src="images/docta.jpeg" alt="IMG" />
        
                <input class="slide-input" id="slide-dot-2" type="radio" name="slides">
                <img class="slide-img" src="images/docta2.webp">
        
                <input class="slide-input" id="slide-dot-3" type="radio" name="slides">
                <img class="slide-img" src="images/im.jpeg">
            </div>
          </div>
          <div class="trait"></div>
          <form class="login100-form" action="home" method="post">
            <h1 class="login100-form-title">DOCTA</h1>
            <span class="login100-form-title2">
                complete your profile
            </span>
            <input type="hidden" name="type" value="complete">
            <div class="row mb-3 ml-3"> 
             <div class="col-6"><input  type="radio" name="test" checked value="yellow"> Patient </div>
            <div class="col-6"> <input type="radio" name="test" value="red"> Doctor</div>
            </div>
            <div class="yellow msg">
              <div
                class="wrap-input100 validate-input"
                data-validate="Valid date is required"
              >
                <input
                  class="input100"
                  type="date"
                  name="date_nais"
                  placeholder="eg: 02-02-2000"
                />
                <span class="focus-input100"></span>
                <span class="symbol-input100">
                  <i class="fa fa-cake-candles" aria-hidden="true"></i>
                </span>
              </div>
              <div
                class="wrap-input100 validate-input"
                data-validate="Valid weight is required"
              >
                <input
                  class="input100"
                  type="number"
                  name="weight"
                  placeholder="Poids"
                />
                <span class="focus-input100"></span>
                <span class="symbol-input100">
                  <i class="fa fa-weight-scale" aria-hidden="true"></i>
                </span>
              </div>
              <div
                class="wrap-input100 validate-input"
                data-validate="Valid height is required"
              >
                <input
                  class="input100"
                  type="number"
                  name="height"
                  placeholder="Taille"
                />
                <span class="focus-input100"></span>
                <span class="symbol-input100">
                  <i class="fa fa-line-height" aria-hidden="true"></i>
                </span>
              </div>
              <div
                class="wrap-input100 validate-input"
                data-validate="Valid gender is required"
                class="row"
              >
              <div class="col-6"><input  type="radio" name="sexe" checked value="F"> Femme </div>
              <div class="col-6"> <input type="radio" name="sexe" value="H"> Homme</div>
              </div>
            </div>
            <div class="red msg">
              <div
                class="wrap-input100 validate-input"
                data-validate="speciality is required"
              >
                <input
                  class="input100"
                  type="text"
                  name="speciality"
                  placeholder="speciality"
                />
                <span class="focus-input100"></span>
                <span class="symbol-input100">
                  <i class="fa fa-stethoscope" aria-hidden="true"></i>
                </span>
              </div>
            </div>
            <div class="container-login100-form-btn">
              <button class="login100-form-btn">Save</button>
            </div>

            <!-- <div class="text-center p-t-136">
						<a class="txt2" href="#">
							Create your Account
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
					</div> -->
          </form>
        </div>
      </div>
    </div>

    <!--===============================================================================================-->
    <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/bootstrap/js/popper.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/select2/select2.min.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/tilt/tilt.jquery.min.js"></script>
    <script>
      $(".js-tilt").tilt({
        scale: 1.1,
      });
    </script>
    <!--===============================================================================================-->
    <script src="js/main.js"></script>
  </body>
</html>
<!-- <div
                class="wrap-input100 validate-input"
                data-validate="Valid date is required"
              >
                <input
                  class="input100"
                  type="date"
                  name="birth"
                  placeholder="eg: 02-02-2000"
                />
                <span class="focus-input100"></span>
                <span class="symbol-input100">
                  <i class="fa fa-cake-candles" aria-hidden="true"></i>
                </span>
              </div>
              <div
                class="wrap-input100 validate-input"
                data-validate="Valid weight is required"
              >
                <input
                  class="input100"
                  type="number"
                  name="weight"
                  placeholder="eg: 50kg"
                />
                <span class="focus-input100"></span>
                <span class="symbol-input100">
                  <i class="fa fa-weight-scale" aria-hidden="true"></i>
                </span>
              </div>
              <div
                class="wrap-input100 validate-input"
                data-validate="Valid height is required"
              >
                <input
                  class="input100"
                  type="number"
                  name="height"
                  placeholder="eg: 1m"
                />
                <span class="focus-input100"></span>
                <span class="symbol-input100">
                  <i class="fa fa-line-height" aria-hidden="true"></i>
                </span>
              </div>
              <div
                class="wrap-input100 validate-input"
                data-validate="Valid email is required: ex@abc.xyz"
                class="row ml-3"
              >
              <div class="col-6"><input  type="radio" name="sexe" checked value="femme"> Femme </div>
              <div class="col-6"> <input type="radio" name="sexe" value="homme"> Homme</div>
              </div> -->