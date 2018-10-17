<%-- 
    Document   : order
    Created on : 15-10-2018, 20:15:41
    Author     : jamal_ahmed
--%>

<%@page import="FunctionLayer.BlockType"%>
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
                                <a class="flex-sm-fill text-sm-center nav-link active" href="order.jsp">Make Order</a>
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
            <div class="row" style="padding-top: 50px;" >
                <div class="col-md-4" style="background-color: #e3f2fd">
                    <h5>1. Choose the size of your lego house</h5>
                    <form name="size" action="FrontController" method="POST">
                        <input type="hidden" name="command" value="size">
                        
                        <div class="form-group">
                            <input type="number" min="0" class="form-control" name="length" placeholder="length">
                        </div>
                        <div class="form-group">
                            <input type="number" min="0" class="form-control" name="width" placeholder="Width">
                        </div> 
                        <div class="form-group">
                            <input type="number" min="0" class="form-control" name="height" placeholder="height">
                        </div> 
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>
                <%if (house != null) {%>
                
                  <%
                        int side1brick4x4 = 0; int side1brick2x2 = 0; int side1brick1x2 = 0;
                        int side3brick4x4 = 0; int side3brick2x2 = 0; int side3brick1x2 = 0;
                        int side2brick4x4 = 0; int side2brick2x2 = 0; int side2brick1x2 = 0;
                        int side4brick4x4 = 0; int side4brick2x2 = 0; int side4brick1x2 = 0;
                            for (int i = 0; i < house.size(); i++) {      
                                
                              side2brick4x4 = side2brick4x4 + house.get(i).getSides().get(0).getBricks4x4();
                              side4brick4x4 = side4brick4x4 + house.get(i).getSides().get(1).getBricks4x4();
                              side1brick4x4 = side1brick4x4 + house.get(i).getSides().get(2).getBricks4x4();
                              side3brick4x4 = side3brick4x4 + house.get(i).getSides().get(3).getBricks4x4();
                              
                              side2brick2x2 = side2brick2x2 + house.get(i).getSides().get(0).getBricks2x2();
                              side4brick2x2 = side4brick2x2 + house.get(i).getSides().get(1).getBricks2x2();
                              side1brick2x2 = side1brick2x2 + house.get(i).getSides().get(2).getBricks2x2();
                              side3brick2x2 = side3brick2x2 + house.get(i).getSides().get(3).getBricks2x2();
                              
                              side2brick1x2 = side2brick1x2 + house.get(i).getSides().get(0).getBricks1x2();
                              side4brick1x2 = side4brick1x2 + house.get(i).getSides().get(1).getBricks1x2();
                              side1brick1x2 = side1brick1x2 + house.get(i).getSides().get(2).getBricks1x2();
                              side3brick1x2 = side3brick1x2 + house.get(i).getSides().get(3).getBricks1x2();
                              
                            }
         %>
 
                
                <div class="col-md-6" style="background-color: #e3f2fd">
                    <h5>2. View your total lego bricks with space for door and window</h5>
                    <table class="table table-hover" style="background-color: #fff">
                        <thead>
                            <tr>
                                <th scope="col">Type</th>
                                <th scope="col">Side 1</th>
                                <th scope="col">Side 2</th>
                                <th scope="col">Side 3</th>
                                 <th scope="col">Side 4</th>
                            </tr>
                        </thead>
                        <tbody>
            
                            
                            <tr>
                                <th scope="row">2x4</th>
                                <td><%= side1brick4x4%></td>
                                <td><%= side2brick4x4%></td>
                                <td><%= side3brick4x4%></td>
                                 <td><%= side4brick4x4%></td>
                            </tr>
                            <tr>
                                <th scope="row">2x2</th>
                                <td><%= side1brick2x2%></td>
                                <td><%= side2brick2x2%></td>
                                <td><%= side3brick2x2%></td>
                                <td><%= side4brick2x2%></td>
                            </tr>
                            <tr>
                                <th scope="row">1x2</th>
                                <td><%= side1brick1x2%></td>
                                <td><%= side2brick1x2%></td>
                                <td><%= side3brick1x2%></td>
                                <td><%= side4brick1x2%></td>
                            </tr>
                             
                        </tbody>
                    </table>
                </div>
                <div class="col-md-2" style="background-color: #e3f2fd"> 
                    <form action="FrontController" method="POST">
                        <input type="hidden" name="command" value="makeorder">
                        <div style="padding-top: 150px">  <input type="submit" class="btn btn-primary" value="Make your Order"> </div>
                    </form>
                </div>    
            </div>

        </div>

   
</div>
 <% }
%>
 
<%@include file="Layout/footer.jsp" %>

