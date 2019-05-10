<%-- 
    Document   : DriverCreated
    Created on : 9/05/2019, 08:46:55 PM
    Author     : Jhon Baron
--%>

<%@page import="com.driver.model.Driver"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Driver Created</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <%
            Driver driver = (Driver) session.getAttribute("driver");
        %>
    </head>
    <body>
        <div class="container" style="margin-top: 2%; margin-bottom: 5%;">
            <header><h3><label><strong>Driver created, already...</strong></label></h3></header>    
        </div>
        <div class="container">
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <table class="table table-bordered" style="text-align: center;">
                        <tr>
                            <td><strong>Id</strong></td>
                            <td><strong>Name</strong></td>
                        </tr>
                        <tr>
                            <td><%= driver.getId()%></td>
                            <td> <%= driver.getName()%> </td>
                        </tr>
                    </table></div>
                <div class="col-md-4"></div>
            </div>
        </div>
       
    </body>
</html>
