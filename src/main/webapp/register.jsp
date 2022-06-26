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
          <form class="login100-form validate-form" action="home" method="post">
            <h1 class="login100-form-title">DOCTA</h1>
            <span class="login100-form-title2">
              Let's sign to your account
            </span>
            <input type="hidden" name="type" value="register">
            <div
              class="wrap-input100 validate-input"
              data-validate="Valid phone is required: kdcl"
            >
              <input
                class="input100"
                type="text"
                name="name"
                placeholder="username"
              />
              <span class="focus-input100"></span>
              <span class="symbol-input100">
                <i class="fa fa-phone" aria-hidden="true"></i>
              </span>
            </div>
            <div
              class="wrap-input100 validate-input"
              data-validate="Valid phone is required: +237-655-450-923"
            >
              <input
                class="input100"
                type="number"
                name="phone"
                placeholder="eg: +237-655-450-923"
              />
              <span class="focus-input100"></span>
              <span class="symbol-input100">
                <i class="fa fa-phone" aria-hidden="true"></i>
              </span>
            </div>   
            <div
              class="wrap-input100 validate-input"
              data-validate="Valid email is required: ex@abc.xyz"
            >
              <input
                class="input100"
                type="text"
                name="email"
                placeholder="Email"
              />
              <span class="focus-input100"></span>
              <span class="symbol-input100">
                <i class="fa fa-envelope" aria-hidden="true"></i>
              </span>
            </div>

            <div
              class="wrap-input100 validate-input"
              data-validate="Password is required"
            >
              <input
                class="input100"
                type="password"
                name="pwd"
                placeholder="Password"
              />
              <span class="focus-input100"></span>
              <span class="symbol-input100">
                <i class="fa fa-lock" aria-hidden="true"></i>
              </span>
            </div>

            <div class="container-login100-form-btn">
              <button class="login100-form-btn">Register</button>
            </div>

            <div class="text-center p-t-12">
              <span> You already have a account? </span>
              <a class="txt2" href="home?page=login"> Sign-In </a>
            </div>
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
