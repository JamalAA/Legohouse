<%-- 
    Document   : test
    Created on : 14-10-2018, 09:24:06
    Author     : Jamal
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
                            <a class="flex-sm-fill text-sm-center nav-link " href="customerpage.jsp">Home</a>
                            <a class="flex-sm-fill text-sm-center nav-link " href="order.jsp">Make Order</a>
                            <a class="flex-sm-fill text-sm-center nav-link " href="invoice.jsp">Invoice</a>
                            <a class="flex-sm-fill text-sm-center nav-link active" href="account.jsp">My Account</a>
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

    </div>
    <div class="row" style="padding-top: 50px;">
        <div class="col-md-3"></div>

        <div class="card col-md-4" style="background-color: #e3f2fd">
            <h5>About me</h5>  
          <form>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4">Firstname</label>
      <input type="text" class="form-control"  value="<%out.println(user.getFirstname());%>" readonly>
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Lastname</label>
      <input type="text" class="form-control" value="<%out.println(user.getLastname());%>" readonly>
    </div>
  </div>
  <div class="form-group">
    <label for="inputAddress">E-mail</label>
    <input type="email" class="form-control" value="<%out.println(user.getEmail());%>" readonly="">
  </div>
 
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputCity">My user ID</label>
     <input type="email" class="form-control" value="<%out.println(user.getId());%>" readonly="">
    </div>
   
   
  </div>
  
  
</form>

        </div>
    </div>
</div>


<%@include file="Layout/footer.jsp" %>

