<%-- 
    Document   : testing
    Created on : 12-10-2018, 09:59:00
    Author     : Jamal
--%>

<%@include file = "Layout/header.jsp" %>

<!--Custom styles-->
<link rel="stylesheet" type="text/css" href="CSS/styling.css">

<div class="container">
    <div class="d-flex justify-content-center h-100">
        <div class="card">
            <div class="card-header">
                <h3>Sign In</h3>

            </div>
            <div class="card-body">
                <form name="login" action="FrontController" method="POST">
                    <input type="hidden" name="command" value="login">
                    <div class="input-group form-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fas fa-user"></i></span>
                        </div>
                        <input type="text" name="email" class="form-control" placeholder="E-mail">

                    </div>
                    <div class="input-group form-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fas fa-key"></i></span>
                        </div>
                        <input type="password" name="password" class="form-control" placeholder="password">
                    </div>

                    <div class="form-group">
                        <input type="submit" value="Login" class="btn float-right login_btn">
                    </div>
                    <br>
                    <br>
                    <br>
                    <div class="card-footer">
                        <div class="d-flex justify-content-center links">
                            Don't have an account? <button type="button" class="btn btn-primary btn-xs"  data-toggle="modal" data-target="#exampleModalCenter">
                                Sign up
                            </button>
                        </div>

                    </div>
                </form>

            </div>
        </div>
    </div>
</div>

<% String error = (String) request.getAttribute("error");
    if (error != null) {

        out.println("<H2>Error!!</h2>");
        out.println(error);

    }
%>

<!-- Button trigger modal -->



<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLongTitle">Sign up</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form name="register" action="FrontController" method="POST">

                    <div class="input-group form-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fas fa-user"></i></span>
                        </div>
                        <input type="text" name="email" class="form-control" placeholder="E-mail">

                    </div>
                    <div class="input-group form-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fas fa-user"></i></span>
                        </div>
                        <input type="text" name="firstname" class="form-control" placeholder="Firstname">

                    </div>
                      <div class="input-group form-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fas fa-user"></i></span>
                        </div>
                        <input type="text" name="lastname" class="form-control" placeholder="Lastname">

                    </div>
                    <div class="input-group form-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fas fa-key"></i></span>
                        </div>
                        <input type="password" name="password1" class="form-control" placeholder="password">
                    </div>
                    <div class="input-group form-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fas fa-key"></i></span>
                        </div>
                        <input type="password" name="password2" class="form-control" placeholder="Retype password">
                    </div>
                    <input type="hidden" name="command" value="register">
                    <button type="button" class="btn btn-scondary" data-dismiss="modal">Cancel</button>
                    <input type="submit" value="Sign up" class="btn float-right login_btn">
                    <div class="modal-footer">

                    </div>
                </form>
            </div>
        </div>    
    </div>
</div>


<%@include file="Layout/footer.jsp" %>
