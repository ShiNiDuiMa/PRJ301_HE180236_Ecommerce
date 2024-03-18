<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : Home.jsp
    Created on : Mar 12, 2024, 9:41:00 AM
    Author     : Hoangvan
--%>
<%@page import="DAO.DAO" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% request.setAttribute("a",new DAO().getNumberPage()); %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="HomeCss.css">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <jsp:include page="Menu.jsp"></jsp:include>
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

            
            <jsp:include page="Brand_Search.jsp"></jsp:include>
            
            
            
            <!--Main layout-->
            <main>
                <div class="container">
                    <!-- Navbar -->
                    
                <!-- Navbar -->

                <!-- Products -->
                <section>
                    <div class="text-center">
                        <form name="f" action="" method="post">
                             </br>
                            <div class="row">
                            <c:forEach  items="${listP}" var="o">
                                <div class="col-lg-3 col-md-6 mb-4">
                                    <div class="card" style="height: 600px;">
                                        <div class="bg-image hover-zoom ripple ripple-surface ripple-surface-light"
                                             data-mdb-ripple-color="light">
                                            <img src="${o.image}"
                                                 class="w-100" style="height: 320px;"/>
                                            <a href="#!">
                                                <div class="mask">
                                                    <div class="d-flex justify-content-start align-items-end h-100">
                                                        <h5><span class="badge bg-dark ms-2"><input type="button" onclick="buy('id')" value="Buy item"/></span></h5>
                                                    </div>
                                                    <div class="d-flex justify-content-start align-items-end h-100">
                                                        <h5><span class="badge bg-dark ms-2"><div class="d-flex justify-content-start align-items-end h-100">
                                                        <h5><span class="badge bg-dark ms-2">Amount:
                            <input type="number" name="num" value="1" style="text-align:center"/></span></h5>
                                                    </div></span></h5>
                                                    </div>
                                                </div>
                                                <div class="hover-overlay">
                                                    <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                                                </div>
                                            </a>
                                        </div>
                                        <div class="card-body">
                                            <a href="" class="text-reset">
                                                <h5 class="card-title mb-2"><a href="detail?pid=${o.id}"/>${o.name}</h5>
                                            </a>
                                            <a href="" class="text-reset ">
                                                <p>${o.description}</p>
                                            </a>
                                            <h6 class="mb-3 price">${o.price} $</h6>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                        </form>
                    </div>
                </section>

                <!-- Pagination -->
                <nav aria-label="Page navigation example" class="d-flex justify-content-center mt-3">
                    <ul class="pagination">
                        <li class="page-item active">
                            <a class="page-link" href="#" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        <c:forEach var="o" begin="1" end="${a}">
                            <li class="page-item" ${indexPage==o?"active":""}><a class="page-link" href="home?index=${o}">${o}</a></li>
                        </c:forEach>
                        
                        
                        <li class="page-item">
                            <a class="page-link" href="#" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                    </ul>
                </nav>   
                <!-- Pagination -->  
            </div>
        </main>
        <!--Main layout-->
        <jsp:include page="Footer.jsp"></jsp:include>

    </body>
</html>
<script type="text/javascript">
    function buy(id) {
        var m = document.f.num.value;
        document.f.action="buy?id" + id + "&num=" + m;
        document.f.submit();
    }
    </script>