<%-- 
    Document   : customerpage
    Created on : 16-10-2018, 16:49:15
    Author     : jamal_ahmed
--%>

<%@include file = "Layout/header.jsp" %>

<link rel="stylesheet" type="text/css" href="CSS/customerpage.css">
<div class="bg">
     
        <div class="container " id="mdHome" >
            <div class="row" >
                <div class="col-md-11 " style="padding-left: 0px; padding-right: 0px;"> 
                    <nav class="navbar navbar-expand-lg navbar-light" style="background-color: #e3f2fd">
                        <a class="navbar-brand" href="#">Lego</a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>

                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <nav class="nav nav-pills flex-column flex-sm-row">
                                <a class="flex-sm-fill text-sm-center nav-link active" href="customerpage.jsp">Home</a>
                                <a class="flex-sm-fill text-sm-center nav-link" href="order.jsp">Make Order</a>
                                <a class="flex-sm-fill text-sm-center nav-link" href="invoice.jsp">Invoice</a>
                                <a class="flex-sm-fill text-sm-center nav-link" href="account.jsp">My Account</a>
                            </nav>
                        </div>
                    </nav>
                </div> 
                  <div class="col-md-1 " style="padding-left: 0px; padding-right: 0px;">
                <div style="background-color: #e3f2fd; padding-top: 8px">
                    <div style="padding-bottom: 6px">
                        <form action="FrontController" method="POST">
                        <input type="hidden" name="command" value="logout">
                        <input class="flex-sm-fill text-sm-center nav-link btn-danger" type="submit" value="logout">
                    </form>
                    </div>    
                </div>
            </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div style=" padding-left: 200px; padding-right: 200px"  >
                        <div style="padding-left: 80px; padding-top: 40px"><h1 style="color: white"> Make your new lego house</h1></div>
                        <div id="LegoNews" class="carousel slide" data-ride="carousel" style="padding-top: 10px">
                            <ol class="carousel-indicators">
                                <li data-target="#LegoNews" data-slide-to="0" class="active"></li>
                                <li data-target="#LegoNews" data-slide-to="1"></li>
                                <li data-target="#LegoNews" data-slide-to="2"></li>
                            </ol>
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <img class="d-block w-100" src="http://getwallpapers.com/wallpaper/full/e/0/1/434041.jpg" height="250px" alt="First slide">
                                </div>
                                <div class="carousel-item">
                                    <img class="d-block w-100" src="http://getwallpapers.com/wallpaper/full/5/b/e/110889.jpg" height="250px" alt="Second slide">
                                </div>
                                <div class="carousel-item">
                                    <img class="d-block w-100" src="http://getwallpapers.com/wallpaper/full/4/d/f/432931.jpg" height="250px" alt="Third slide">
                                </div>
                            </div>
                            <a class="carousel-control-prev" href="#LegoNews" role="button" data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="carousel-control-next" href="#LegoNews" role="button" data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>          
                    </div>
                </div>
            </div>
            <div class="row" style="padding-top: 20px">  
                <div class="col-sm-4 hovereffect" >

                    <div class="card " >
                        <img class="card-img-top img-responsive" src="http://getwallpapers.com/wallpaper/full/8/8/9/432709.jpg" height="200" width="100" alt="Card image cap">   
                        <div class="overlay">

                            <a class="info" href="order.jsp">Make Order</a>
                        </div>
                    </div>
                </div> 
                       <div class="col-sm-4 hovereffect" >

                    <div class="card " >
                        <img class="card-img-top img-responsive" src="https://www.lifewire.com/thmb/XBS3m9ZDaQBVbFSavzotLmVSwqg=/768x0/filters:no_upscale():max_bytes(150000):strip_icc()/close-up-of-grocery-receipt-147205787-5a3836f90c1a820036f12b5c.jpg" height="200" width="100" alt="Card image cap">   
                        <div class="overlay">

                            <a class="info" href="invoice.jsp">View your invoice </a>
                        </div>
                    </div>
                </div> 
                       <div class="col-sm-4 hovereffect" >

                    <div class="card " >
                        <img class="card-img-top img-responsive" src="http://getwallpapers.com/wallpaper/full/3/4/3/453441.jpg" height="200" width="100" alt="Card image cap">   
                        <div class="overlay">

                            <a class="info" href="account.jsp">My Account</a>
                        </div>
                    </div>
                </div> 
             </div>
        </div>

   
</div>


<%@include file="Layout/footer.jsp" %>
