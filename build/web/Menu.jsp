<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div>

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
                        src="https://media2.giphy.com/media/IEm8kcqLVCctHJ1kWm/giphy.gif"
                        height="40"
                        alt="MDB Logo"
                        loading="lazy"
                        />
                </a>
                <!-- Left links -->
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item active">
                        <a class="nav-link " href="home">Home</a>
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
                <a class="nav-link me-3" href="show">
                    <i class="fas fa-shopping-cart"></i>
                    <span class="badge rounded-pill badge-notification bg-danger">${requestScope.size}</span>
                </a>
                <c:if test="${sessionScope.acc.isAdmin == 1}">
                    <a class="nav-link me-3" href="#">
                        <i class=""></i>Manager Account
                    </a>
                    
                </c:if>
                <c:if test="${sessionScope.acc.isSell == 1}">
                    <a class="nav-link me-3" href="manager">
                        <i class=""></i>Manager Product
                    </a>
                </c:if>


                <c:if test="${sessionScope.acc != null}">
                    <a class="border rounded px-2 nav-link" href="logout">Logout</a>
                </c:if>
                <c:if test="${sessionScope.acc == null}">
                    <a href="Login.jsp" class="border rounded px-2 nav-link"
                       target="_self" >
                        <i class="fab fa-github me-2"></i>Login</a>
                    </c:if>

            </div>
            <!-- Right elements -->

        </div>
        <!-- Container wrapper -->
    </nav>
    <!-- Navbar -->
</div>
