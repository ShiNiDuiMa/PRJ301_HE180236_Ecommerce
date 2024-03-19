<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : myCart
    Created on : Mar 19, 2024, 12:56:42 AM
    Author     : Hoangvan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/Cart.css">
        <!--        @import url('https://fonts.googleapis.com/css2?family=Manrope:wght@200&display=swap');-->
    </head>
    <body>

        <!-- 
          Bootstrap docs: https://getbootstrap.com/docs
          Get more snippet on https://bootstraptor.com/snippets
        -->

        <!--        <section class="pt-5 pb-5">
                    <div class="container">
                        <div class="row w-100">
                            <div class="col-lg-12 col-md-12 col-12">
                                <h3 class="display-5 mb-2 text-center">Shopping Cart</h3>
                                <p class="mb-5 text-center">
                                    <i class="text-info font-weight-bold">3</i> items in your cart</p>
                                <table id="shoppingCart" class="table table-condensed table-responsive">
                                    <thead>
                                        <tr>
                                            <th style="width:60%">Product</th>
                                            <th style="width:12%">Price</th>
                                            <th style="width:10%">Quantity</th>
                                            <th style="width:16%"></th>
                                        </tr>
                                    </thead>
                                    <tbody>
        <c:set var="o" value="${requestScope.cart}"/>
        <c:set var="tt" value="0"/>
        <c:forEach var="i" items="${o.items}">
            <c:set var="tt" value="${tt+1}"/>
            
            <tr>
                <td data-th="Product">
                    <div class="row">
                        <div class="col-md-3 text-left">
                            <img src="${i.product.image}" alt="" class="img-fluid d-none d-md-block rounded mb-2 shadow ">
                        </div>
                        <p class="mb-5 text-center">
        <i class="text-info font-weight-bold"></i> items in your cart</p>
                        <div class="col-md-9 text-left mt-sm-2">
                            <h4>${i.product.name}</h4>
                            <p class="font-weight-light">Brand &amp; Name</p>
                        </div>
                    </div>
                </td>
                <td data-th="Price">$ ${i.product.price}</td>
                <td data-th="Quantity">
                    <input type="number" class="form-control form-control-lg text-center" value="1">
                </td>
                <td class="actions" data-th="">
                    <div class="text-right">
                        <button class="btn btn-white border-secondary bg-white btn-md mb-2">
                            <a href=""process?num="-1&id=${i.product.id}"><i class="fas fa-sync"></i></a> 
                        </button>
                        <button class="btn btn-white border-secondary bg-white btn-md mb-2">
                            <a href=""process?num="1&id=${i.product.id}"><i class="fas fa-trash"></i></a> 
                        </button>
                    </div>
                </td>
        <form action="process" method="post">
            <input type="hidden" name="id" value="${i.product.id}" />
            <input type="submit" name="" value="return item" />
        </form>
            </tr>
        </c:forEach>
       
    </tbody>
</table>
<div class="float-right text-right">
    <h4>Subtotal:</h4>
    <h1>$ ${o.totalMoney}</h1>
</div>
</hr>
<form action="checkout" method="post">
    <input type="submit" value="Check out" />
</form>
</hr>
<a href="home">Click to continue shopping</a>
</div>
</div>
<div class="row mt-4 d-flex align-items-center">
<div class="col-sm-6 order-md-2 text-right">
<a href="catalog.html" class="btn btn-primary mb-4 btn-lg pl-5 pr-5">Checkout</a>
</div>
<div class="col-sm-6 mb-3 mb-m-1 order-md-1 text-md-left">
<a href="catalog.html">
    <i class="fas fa-arrow-left mr-2"></i> Continue Shopping</a>
</div>
</div>
</div>
</section>-->


        <h1>Shopping cart</h1>
        <table border="1">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Name</th>
                    <th>Quantity</th>
                    <th>Price</th>
                    <th>Total money</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <c:set var="cart" value="${requestScope.cart}"/>
                <c:set var="tt" value="0"/>
                <c:forEach var="i" items="${cart.items}">
                    <c:set var="tt" value="${tt+1}"/>
                
                <tr>
                    <td> yup ${tt}</td>
                    <td>yup ${i.product.name}</td>
                    <td>
                        <button><a href="process?num=-1&id=${i.product.id}">-</a></button>
                        ${i.quantity}
                        <button><a href="process?num=1&id=${i.product.id}">+</a></button>
                    </td>
                    <td>${i.price}</td>
                    <td>${(i.price*i.quantity)}</td>
                    <td>${tt}</td>
                    <td>
                        <form action="process" method="post">
                            <input type="hidden" name="id" value="${i.product.id}"/>
                            <input type="submit" value="return item"/>
                        </form>
                    </td>
                </tr>
                </c:forEach>    
            </tbody>
            
        </table>
                <h3>Total money: $ ${cart.totalMoney}</h3>
                <hr/>
                <form action="checkout" method="post">
                    <input type="submit" value="Check out"/>
                </form>
                <hr/><!-- comment -->
                <a href="home">Click me to contitnue shopping</a>
    </body>