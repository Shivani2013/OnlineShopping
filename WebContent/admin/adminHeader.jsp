<%@page errorPage="error.jsp" %>
<html>
<head>
<link rel="stylesheet" href="../css/home-style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
    <!--Header-->
    <br>
    <div class="topnav sticky">
   <%String email=session.getAttribute("email").toString(); %>
            <center><h2 style="color: #5d1475;font-family:Century; font-size: 40px">Voguish Trends 
            &nbsp;&nbsp;&nbsp;&nbsp;
            <a href="../logout.jsp">Logout <i class='fas fa-share-square'></i></a></h2></center>
            <a href="addNewProduct.jsp">Add New Product <i class='fas fa-plus-square'></i></a>
            <a href="allProductEditProduct.jsp">All Products & Edit Products <i class='fab fa-elementor'></i></a>
            <a href="messagesReceived.jsp">Messages Received <i class='fas fa-comment-alt'></i></a>
            <a href="ordersReceived.jsp">Orders Received <i class="fas fa-archive"></i></a>
            <a href="cancelOrders.jsp">Cancel Orders <i class='fas fa-window-close'></i></a>
            <a href="deliveredOrders.jsp">Delivered Orders <i class='fas fa-dolly'></i></a>
            
</div>
<br>
</html>
