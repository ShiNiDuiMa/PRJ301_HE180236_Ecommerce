<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : Brand_Search
    Created on : Mar 13, 2024, 6:02:14 PM
    Author     : Hoangvan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div>
<nav class="navbar navbar-expand-lg navbar-dark mt-3 mb-5 shadow p-2" style="background-color: #607D8B">
                        <!-- Container wrapper -->
                        <div class="container-fluid">

                            <!-- Navbar brand -->
                            <a class="navbar-brand" href="#">Brands :</a>

                            <!-- Toggle button -->
                            <button 
                                class="navbar-toggler" 
                                type="button" 
                                data-mdb-toggle="collapse" 
                                data-mdb-target="#navbarSupportedContent2" 
                                aria-controls="navbarSupportedContent2" 
                                aria-expanded="false" 
                                aria-label="Toggle navigation">
                                <i class="fas fa-bars"></i>
                            </button>

                            <!-- Collapsible wrapper -->
                            <div class="collapse navbar-collapse" id="navbarSupportedContent2">
                                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                <c:forEach items="${listB}" var="o">

                                    <!-- Link -->
                                    <li class="nav-item ${tag==o.bid?"active":""}">
                                        <a class="nav-link text-white" href="brand?bid=${o.bid}">${o.bname}</a>
                                    </li>
                                </c:forEach>
                            </ul>

                            <!-- Search -->
                            <form action="search" method="post" class="w-auto py-1" style="max-width: 12rem">
                                <div class="input-group">

                                    <input value="${txtS}" type="text" name="txt" class="form-control rounded-0" placeholder="Search" aria-label="Search">
                                    <div class="input-group-append">
                                        <button type="submit" class="btn btn-secondary btn-number"/>
                                        <i class="fa fa-search"></i>
                                    </button>
                                    </div>
                                </div><!-- comment -->
                            </form>

                        </div>
                    </div>
                    <!-- Container wrapper -->
                </nav>
    </div>