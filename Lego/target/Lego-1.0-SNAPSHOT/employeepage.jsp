<%-- 
    Document   : employeepage.jsp
    Created on : Aug 24, 2017, 6:31:57 AM
    Author     : kasper
--%>
<%@include file = "Layout/header.jsp" %>
<link rel="stylesheet" type="text/css" href="CSS/employee.css">
<div class="bg" >
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
        <div>

            <div style="background-color: #ffffff; margin-top: 50px">

                <div class="row" >
                    <div class="col-md-4"></div>
                    <div class="col-md-5"> <h3>View All orders</h3> </div>
                    <div class="col-md-3"> <p>Employee: <%= user.getFirstname() + " " + user.getLastname()%></p></div>
                </div>
                 <!-- Button trigger modal -->
                <button type="button" class="btn btn-info" data-toggle="modal" data-target="#exampleModalCenter">
                    Click here to send order
                </button>
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
                        <%                            if (userOrders != null) {%>

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


        </div>

    </div>   

</div>


<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLongTitle">Send order</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form action="FrontController" method="POST">
                <div class="modal-body">

                    <input type="hidden" name="command" value="sendorder">
                    <input type="number" name="orderid" placeholder="Type order id">
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                    <input type="submit" class="btn btn-success" value="Send">
                </div>
            </form>

        </div>
    </div>
</div>
<%@include file = "Layout/footer.jsp" %>