<%-- 
    Document   : header
    Created on : 12-10-2018, 09:36:15
    Author     : Jamal
--%>

<%@page import="FunctionLayer.Order"%>
<%@page import="java.util.List"%>
<%@page import="FunctionLayer.BlockLayer"%>
<%@page import="FunctionLayer.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
   User user = (User) (session.getAttribute("user"));
 List<BlockLayer> house = (List<BlockLayer>) (session.getAttribute("house")); 
 List<Order> userOrders = (List<Order>) session.getAttribute("userOrders");
  List<BlockLayer> housebricks = (List<BlockLayer>) (session.getAttribute("blocks")); 
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lego</title>
        
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <!--Fontawesome CDN-->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
        
    </head>
    <body>
 <%
            if (!request.getRequestURI().equalsIgnoreCase("/index.jsp") && !request.getRequestURI().equalsIgnoreCase("/Lego/")) {
                if (user == null) {
                    request.getRequestDispatcher("").forward(request, response);
                }
            }

        %>