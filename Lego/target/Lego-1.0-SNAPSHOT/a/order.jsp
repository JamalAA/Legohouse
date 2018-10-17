<%-- 
    Document   : test
    Created on : 14-10-2018, 09:24:06
    Author     : Jamal
--%>

<%@include file = "../Layout/header.jsp" %>

<link rel="stylesheet" type="text/css" href="CSS/customerpage.css">
<div class="bg">
    <div style="padding-top: 100px">    
        <div class="container " id="mdHome" >
            <div class="row" >
                <div class="col-md-12 " style="padding-left: 0px; padding-right: 0px;"> 
                    <nav class="navbar navbar-expand-lg navbar-light" style="background-color: #e3f2fd">
                        <a class="navbar-brand" href="#"><h3 style="color: black">Lego</h3></a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>

                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <nav class="nav nav-pills flex-column flex-sm-row">
                                <a class="flex-sm-fill text-sm-center nav-link" href="customerpage.jsp">Home</a>
                                <a class="flex-sm-fill text-sm-center nav-link active" href="order.jsp">Make Order</a>
                                <a class="flex-sm-fill text-sm-center nav-link" href="#">Purchase history</a>
                                <a class="flex-sm-fill text-sm-center nav-link" href="#">My Account</a>
                            </nav>
                        </div>
                    </nav>
                </div>           
            </div>

        </div>

    </div>
</div>


<%@include file="../Layout/footer.jsp" %>

