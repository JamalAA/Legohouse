<%-- 
    Document   : test
    Created on : 14-10-2018, 09:24:06
    Author     : Jamal
--%>

<%@include file = "Layout/header.jsp" %>

<link rel="stylesheet" type="text/css" href="CSS/invoice.css">
<div class="bg" style="height: 100%">

    <div class="container " id="mdHome" >
        <div class="row" >
            <div class="col-md-11 " style="padding-left: 0px; padding-right: 0px;"> 
                <nav class="navbar navbar-expand-lg navbar-light" style="background-color: #e3f2fd">
                    <a class="navbar-brand" href="#">Lego</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse " id="navbarSupportedContent">

                        <nav class="nav nav-pills flex-column flex-sm-row">


                            <a class="flex-sm-fill text-sm-center nav-link " href="customerpage.jsp">Home</a>
                            <a class="flex-sm-fill text-sm-center nav-link " href="order.jsp">Make Order</a>
                            <a class="flex-sm-fill text-sm-center nav-link active" name="b" href="invoice.jsp">Invoice</a>
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
        <div style="background-color: #e3f2fd; margin-top: 50px"> 
            <div class="row" >
                <div class="col-md-4"></div>
                <div class="col-md-5"> <h3>View your orders</h3> </div>
                <div class="col-md-3"> <h5>Customer: <%= user.getFirstname() + " " + user.getLastname()%> </h5></div>
            </div>

            <div style="background-color: #ffffff; margin-top: 50px">

                <table class="table table-hover">
                    <thead>

                        <tr>
                            <th scope="col">Order ID</th>
                            <th scope="col">Order date</th>
                            <th scope="col">Length</th>
                            <th scope="col">Width</th>
                            <th scope="col">Layers</th>
                            <th scope="col">Order status</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            if (userOrders != null) {%>

                        <%
                            for (int i = 0; i < userOrders.size(); i++) {%>


                        <tr>
                            <th scope="row"><% out.println(userOrders.get(i).getOrder_id());%></th>
                            <td><% out.println(userOrders.get(i).getTimestamp());%></td>
                            <td><% out.println(userOrders.get(i).getLength());%></td>
                            <td><% out.println(userOrders.get(i).getWidth());%></td>
                            <td><% out.println(userOrders.get(i).getLayers());%></td>
                            <td><% out.println(userOrders.get(i).getOrderStatus());%></td>
                        </tr>


                        <%  }
                        %>
                        <% }
                        %>

                    </tbody>
                </table>

            </div>
            <div class="row" style="height: 45px">
                <div class="col-md-4">
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalLong">
                        Type order Id here to view your total lego bricks
                    </button>
                </div>
                <div class="col-md-5"> </div>
                <div class="col-md-3"> </div>
            </div>
            <%
                if (housebricks != null) {%>
            <%
                int side1brick4x4 = 0;
                int side1brick2x2 = 0;
                int side1brick1x2 = 0;
                int side3brick4x4 = 0;
                int side3brick2x2 = 0;
                int side3brick1x2 = 0;
                int side2brick4x4 = 0;
                int side2brick2x2 = 0;
                int side2brick1x2 = 0;
                int side4brick4x4 = 0;
                int side4brick2x2 = 0;
                int side4brick1x2 = 0;
                for (int i = 0; i < housebricks.size(); i++) {

                    side2brick4x4 = side2brick4x4 + housebricks.get(i).getSides().get(0).getBricks4x4();
                    side4brick4x4 = side4brick4x4 + housebricks.get(i).getSides().get(1).getBricks4x4();
                    side1brick4x4 = side1brick4x4 + housebricks.get(i).getSides().get(2).getBricks4x4();
                    side3brick4x4 = side3brick4x4 + housebricks.get(i).getSides().get(3).getBricks4x4();

                    side2brick2x2 = side2brick2x2 + housebricks.get(i).getSides().get(0).getBricks2x2();
                    side4brick2x2 = side4brick2x2 + housebricks.get(i).getSides().get(1).getBricks2x2();
                    side1brick2x2 = side1brick2x2 + housebricks.get(i).getSides().get(2).getBricks2x2();
                    side3brick2x2 = side3brick2x2 + housebricks.get(i).getSides().get(3).getBricks2x2();

                    side2brick1x2 = side2brick1x2 + housebricks.get(i).getSides().get(0).getBricks1x2();
                    side4brick1x2 = side4brick1x2 + housebricks.get(i).getSides().get(1).getBricks1x2();
                    side1brick1x2 = side1brick1x2 + housebricks.get(i).getSides().get(2).getBricks1x2();
                    side3brick1x2 = side3brick1x2 + housebricks.get(i).getSides().get(3).getBricks1x2();
                }
            %>
            <div class="col-md-6" style="background-color: #e3f2fd">
                <h5>View your total lego bricks with space for door and window</h5>
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
            <% }
            %>


        </div>               
        r
    </div>

    <!-- Button trigger modal -->


    <!-- Modal -->
    <div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
        <div class="modal-dialog" role="document" >
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLongTitle">Lego bricks</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div>
                        <form action="FrontController" method="POST">
                            <input type="hidden" name="command" value="invoice">
                            <input type="number" name="id" placeholder="type your order id">
                            <input type="submit" class="btn btn-primary" value="view">
                        </form>
                    </div>
                    <div>

                    </div> 
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>

                </div>
            </div>
        </div>
    </div>

    <%@include file="Layout/footer.jsp" %>

