<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : Home.jsp
    Created on : Mar 12, 2024, 9:41:00 AM
    Author     : Hoangvan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="HomeCss.css">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <nav class="navbar fixed-top navbar-expand-lg navbar-light bg-white">
            <!-- Container wrapper -->
            <div class="container">    
                <!-- Toggle button -->
                <button
                    class="navbar-toggler"
                    type="button"
                    data-mdb-toggle="collapse"
                    data-mdb-target="#navbarSupportedContent1"
                    aria-controls="navbarSupportedContent1"
                    aria-expanded="false"
                    aria-label="Toggle navigation"
                    >
                    <i class="fas fa-bars"></i>
                </button>

                <!-- Collapsible wrapper -->
                <div class="collapse navbar-collapse" id="navbarSupportedContent1">      
                    <!-- Navbar brand -->
                    <a class="navbar-brand mt-2 mt-sm-0" href="https://mdbootstrap.com/">
                        <img
                            src="https://mdbcdn.b-cdn.net/img/logo/mdb-transaprent-noshadows.webp"
                            height="20"
                            alt="MDB Logo"
                            loading="lazy"
                            />
                    </a>
                    <!-- Left links -->
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item active">
                            <a class="nav-link " href="https://mdbootstrap.com/">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="https://mdbootstrap.com/docs/standard/">About MDB</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="https://mdbootstrap.com/docs/standard/getting-started/installation/">Free download</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="https://mdbootstrap.com/education/bootstrap/">Free tutorials</a>
                        </li>
                    </ul>
                    <!-- Left links -->      
                </div>
                <!-- Collapsible wrapper -->

                <!-- Right elements -->
                <div class="d-flex align-items-center">
                    <!-- Icon -->
                    <a class="nav-link me-3" href="#">
                        <i class="fas fa-shopping-cart"></i>
                        <span class="badge rounded-pill badge-notification bg-danger">1</span>
                    </a>

                    <a class="nav-link me-3" href="#">
                        <i class="fab fa-facebook-f"></i>
                    </a>
                    <a class="nav-link me-3" href="#">
                        <i class="fab fa-twitter"></i>
                    </a>
                    <a href="https://github.com/mdbootstrap/bootstrap-material-design" class="border rounded px-2 nav-link"
                       target="_blank">
                        <i class="fab fa-github me-2"></i>MDB GitHub
                    </a>
                </div>
                <!-- Right elements -->

            </div>
            <!-- Container wrapper -->
        </nav>
        <!-- Navbar -->

        <!-- carousel -->
        <div id="carouselExampleCaptions" class="carousel slide carousel-fade" data-mdb-ride="carousel">
            <div class="carousel-indicators">
                <button
                    type="button"
                    data-mdb-target="#carouselExampleCaptions"
                    data-mdb-slide-to="0"
                    class="active"
                    aria-current="true"
                    aria-label="Slide 1"
                    ></button>
                <button
                    type="button"
                    data-mdb-target="#carouselExampleCaptions"
                    data-mdb-slide-to="1"
                    aria-label="Slide 2"
                    ></button>
                <button
                    type="button"
                    data-mdb-target="#carouselExampleCaptions"
                    data-mdb-slide-to="2"
                    aria-label="Slide 3"
                    ></button>
            </div>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="https://i.pinimg.com/564x/8c/cc/e0/8ccce0d0855bff5e803d81dff2d8ff28.jpg" class="d-block w-100" alt="Wild Landscape"/>
                    <div class="mask" style="background-color: rgba(0, 0, 0, 0.4)"></div>
                    <div class="carousel-caption d-none d-sm-block mb-5">
                        <h1 class="mb-4">
                            <strong>Learn Bootstrap 5 with MDB</strong>
                        </h1>

                        <p>
                            <strong>Best & free guide of responsive web design</strong>
                        </p>

                        <p class="mb-4 d-none d-md-block">
                            <strong>The most comprehensive tutorial for the Bootstrap 5. Loved by over 3 000 000 users. Video and written versions
                                available. Create your own, stunning website.</strong>
                        </p>

                        <a target="_blank" href="https://mdbootstrap.com/education/bootstrap/" class="btn btn-outline-white btn-lg">Start free tutorial
                            <i class="fas fa-graduation-cap ms-2"></i>
                        </a>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/8-col/img%283%29.jpg" class="d-block w-100" alt="Camera"/>
                    <div class="mask" style="background-color: rgba(0, 0, 0, 0.4)"></div>
                    <div class="carousel-caption d-none d-md-block mb-5">
                        <h1 class="mb-4">
                            <strong>Learn Bootstrap 5 with MDB</strong>
                        </h1>

                        <p>
                            <strong>Best & free guide of responsive web design</strong>
                        </p>

                        <p class="mb-4 d-none d-md-block">
                            <strong>The most comprehensive tutorial for the Bootstrap 5. Loved by over 3 000 000 users. Video and written versions
                                available. Create your own, stunning website.</strong>
                        </p>

                        <a target="_blank" href="https://mdbootstrap.com/education/bootstrap/" class="btn btn-outline-white btn-lg">Start free tutorial
                            <i class="fas fa-graduation-cap ms-2"></i>
                        </a>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/8-col/img%285%29.jpg" class="d-block w-100" alt="Exotic Fruits"/>
                    <div class="mask" style="background-color: rgba(0, 0, 0, 0.4)"></div>
                    <div class="carousel-caption d-none d-md-block mb-5">
                        <h1 class="mb-4">
                            <strong>Learn Bootstrap 5 with MDB</strong>
                        </h1>

                        <p>
                            <strong>Best & free guide of responsive web design</strong>
                        </p>

                        <p class="mb-4 d-none d-md-block">
                            <strong>The most comprehensive tutorial for the Bootstrap 5. Loved by over 3 000 000 users. Video and written versions
                                available. Create your own, stunning website.</strong>
                        </p>

                        <a target="_blank" href="https://mdbootstrap.com/education/bootstrap/" class="btn btn-outline-white btn-lg">Start free tutorial
                            <i class="fas fa-graduation-cap ms-2"></i>
                        </a>
                    </div>
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-mdb-target="#carouselExampleCaptions" data-mdb-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-mdb-target="#carouselExampleCaptions" data-mdb-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>

        <!--Main layout-->
        <main class="mt-5 pt-4">
    <div class="container">
        <!-- Heading -->
        <h2 class="my-5 text-center">Checkout form</h2>

        <!--Grid row-->
        <div class="row">
            <!--Grid column-->
            <div class="col-md-8 mb-4">
                <!--Card-->
                <div class="card p-4">
                    <!--Grid row-->
                    <div class="row mb-3">
                        <!--Grid column-->
                        <div class="col-md-6 mb-2">
                            <!--firstName-->
                            <div class="form-outline">
                                <input type="text" id="typeText" class="form-control" />
                                <label class="form-label" for="typeText">First name</label>
                            </div>
                        </div>
                        <!--Grid column-->

                        <!--Grid column-->
                        <div class="col-md-6 mb-2">
                            <!--lastName-->
                            <div class="form-outline">
                                <input type="text" id="typeText" class="form-control" />
                                <label class="form-label" for="typeText">Last name</label>
                            </div>
                        </div>
                        <!--Grid column-->
                    </div>
                    <!--Grid row-->

                    <!--Username-->
                    <div class="input-group mb-4">
                        <span class="input-group-text" id="basic-addon1">@</span>
                        <input type="text" class="form-control" placeholder="Username" aria-label="Username" aria-describedby="basic-addon1" />
                    </div>

                    <!--email-->
                    <p class="mb-0">
                        Email (optional)
                    </p>
                    <div class="form-outline mb-4">
                         <input type="email" class="form-control" placeholder="youremail@example.com" aria-label="youremail@example.com" aria-describedby="basic-addon1" />
                    </div>

                    <!--address-->
                    <p class="mb-0">
                        Address
                    </p>
                    <div class="form-outline mb-4">
                        <input type="email" class="form-control" placeholder="1234 Main St" aria-label="1234 Main St" aria-describedby="basic-addon1" />
                    </div>

                    <!--address-2-->
                    <p class="mb-0">
                        Address 2 (optional)
                    </p>
                    <div class="form-outline mb-4">
                        <input type="email" class="form-control" placeholder="Apartment or suite" aria-label="Apartment or suite" aria-describedby="basic-addon1" />
                    </div>

                    <!--Grid row-->
                    <div class="row">
                        <!--Grid column-->
                        <div class="col-lg-4 col-md-12 mb-4">
                            <p class="mb-0">
                                Country
                            </p>
                            <div class="form-outline mb-4">
                        <input type="email" class="form-control" placeholder="United States" aria-label="United States" aria-describedby="basic-addon1" />
                    </div>
                        </div>
                        <!--Grid column-->

                        <!--Grid column-->
                        <div class="col-lg-4 col-md-12 mb-4">
                            <p class="mb-0">
                                State
                            </p>
                            <div class="form-outline mb-4">
                        <input type="email" class="form-control" placeholder="California" aria-label="California" aria-describedby="basic-addon1" />
                    </div>
                        </div>
                        <!--Grid column-->

                        <!--Grid column-->
                        <div class="col-lg-4 col-md-12 mb-4">
                            <p class="mb-0">
                                Zip
                            </p>
                            <div class="form-outline">
                                <input type="text" class="form-control"/>
                            </div>
                        </div>
                        <!--Grid column-->
                    </div>
                    <!--Grid row-->

                    <hr />
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" />
                        <label class="form-check-label" for="flexCheckDefault">Shipping address is the same as my billing address</label>
                    </div>

                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" />
                        <label class="form-check-label" for="flexCheckDefault">Save this information for next time</label>
                    </div>

                    <hr />

                    <div class="my-3">
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1" checked />
                            <label class="form-check-label" for="flexRadioDefault1"> Credit card </label>
                        </div>

                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" />
                            <label class="form-check-label" for="flexRadioDefault2"> Debit card </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault3" />
                            <label class="form-check-label" for="flexRadioDefault3"> Paypal </label>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-6 mb-3">
                            <p class="mb-0">
                                Name on card
                            </p>
                            <div class="form-outline">
                                <input type="text" class="form-control"/>
                                <div class="form-helper">Full name as displayed on card</div>
                            </div>
                        </div>
                        <div class="col-md-6 mb-3">
                            <p class="mb-0">
                                Credit card number
                            </p>
                            <div class="form-outline">
                                <input type="text" class="form-control" />                                
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3 mb-3">
                            <p class="mb-0">
                                Expiration
                            </p>
                            <div class="form-outline">
                                <input type="text" class="form-control" />
                                
                            </div>
                        </div>
                        <div class="col-md-3 mb-3">
                            <p class="mb-0">
                                CVV
                            </p>
                            <div class="form-outline">
                                <input type="text" class="form-control" />
                                
                            </div>
                        </div>
                    </div>
                    <hr class="mb-4" />                    
                  <button class="btn btn-primary" type="button">Continue to checkout</button>
                </div>
                <!--/.Card-->
            </div>
            <!--Grid column-->

            <!--Grid column-->
            <div class="col-md-4 mb-4">
                <!-- Heading -->
                <h4 class="d-flex justify-content-between align-items-center mb-3">
                    <span class="text-muted">Your cart</span>
                    <span class="badge rounded-pill badge-primary">3</span>
                </h4>

                <!-- Cart -->
                <ul class="list-group mb-3">
                    <li class="list-group-item d-flex justify-content-between">
                        <div>
                            <h6 class="my-0">Product name</h6>
                            <small class="text-muted">Brief description</small>
                        </div>
                        <span class="text-muted">$12</span>
                    </li>
                    <li class="list-group-item d-flex justify-content-between">
                        <div>
                            <h6 class="my-0">Second product</h6>
                            <small class="text-muted">Brief description</small>
                        </div>
                        <span class="text-muted">$8</span>
                    </li>
                    <li class="list-group-item d-flex justify-content-between">
                        <div>
                            <h6 class="my-0">Third item</h6>
                            <small class="text-muted">Brief description</small>
                        </div>
                        <span class="text-muted">$5</span>
                    </li>
                    <li class="list-group-item d-flex justify-content-between bg-light">
                        <div class="text-success">
                            <h6 class="my-0">Promo code</h6>
                            <small>EXAMPLECODE</small>
                        </div>
                        <span class="text-success">-$5</span>
                    </li>
                    <li class="list-group-item d-flex justify-content-between">
                        <span>Total (USD)</span>
                        <strong>$20</strong>
                    </li>
                </ul>
                <!-- Cart -->

                <!-- Promo code -->
                <form class="card p-2">
                    <div class="input-group mb-3">
  <input
    type="text"
    class="form-control"
    placeholder="Promo code"
    aria-label="Promo code"
    aria-describedby="button-addon2"
  />
  <button class="btn btn-primary" type="button" id="button-addon2" data-mdb-ripple-color="dark">
    redeem
  </button>
</div>
                </form>
                <!-- Promo code -->
            </div>
            <!--Grid column-->
        </div>
        <!--Grid row-->
    </div>
</main>
        <!--Main layout-->

        <footer class="text-center text-white mt-4" style="background-color: #607D8B">

            <!--Call to action-->
            <div class="pt-4 pb-2">
                <a class="btn btn-outline-white footer-cta mx-2" href="https://mdbootstrap.com/docs/jquery/getting-started/download/" target="_blank" role="button">Download MDB
                    <i class="fas fa-download ms-2"></i>
                </a>
                <a class="btn btn-outline-white footer-cta mx-2" href="https://mdbootstrap.com/education/bootstrap/" target="_blank" role="button">Start free tutorial
                    <i class="fas fa-graduation-cap ms-2"></i>
                </a>
            </div>
            <!--/.Call to action-->

            <hr class="text-dark">

            <div class="container">
                <!-- Section: Social media -->
                <section class="mb-3">

                    <!-- Facebook -->
                    <a
                        class="btn-link btn-floating btn-lg text-white"
                        href="#!"
                        role="button"
                        data-mdb-ripple-color="dark"
                        ><i class="fab fa-facebook-f"></i
                        ></a>

                    <!-- Twitter -->
                    <a
                        class="btn-link btn-floating btn-lg text-white"
                        href="#!"
                        role="button"
                        data-mdb-ripple-color="dark"
                        ><i class="fab fa-twitter"></i
                        ></a>

                    <!-- Google -->
                    <a
                        class="btn-link btn-floating btn-lg text-white"
                        href="#!"
                        role="button"
                        data-mdb-ripple-color="dark"
                        ><i class="fab fa-google"></i
                        ></a>

                    <!-- Instagram -->
                    <a
                        class="btn-link btn-floating btn-lg text-white"
                        href="#!"
                        role="button"
                        data-mdb-ripple-color="dark"
                        ><i class="fab fa-instagram"></i
                        ></a>

                    <!-- YouTube -->
                    <a
                        class="btn-link btn-floating btn-lg text-white"
                        href="#!"
                        role="button"
                        data-mdb-ripple-color="dark"
                        ><i class="fab fa-youtube"></i
                        ></a>
                    <!-- Github -->
                    <a
                        class="btn-link btn-floating btn-lg text-white"
                        href="#!"
                        role="button"
                        data-mdb-ripple-color="dark"
                        ><i class="fab fa-github"></i
                        ></a>
                </section>
                <!-- Section: Social media -->
            </div>
            <!-- Grid container -->

            <!-- Copyright -->
            <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2); text-color: #E0E0E0">
                © 2022 Copyright:
                <a class="text-white" href="https://mdbootstrap.com/">MDBootstrap.com</a>
            </div>
            <!-- Copyright -->
        </footer>
    </body>
</html>
