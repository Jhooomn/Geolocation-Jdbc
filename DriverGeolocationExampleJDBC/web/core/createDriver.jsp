<%-- 
    Document   : createDriver
    Created on : 9/05/2019, 08:01:24 PM
    Author     : Jhon Baron
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create a Driver</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    
    </head>
    <body>
        <div class="container" style="margin-top: 2%; margin-bottom: 3%;">
            <header><h3><label><strong>Create a Driver</strong></label></h3></header>    
        </div>
        <div class="container">
            <form class="form" action="../createDriverServlet" method="post">
                <div class="row">
                    <div class="form-group col-md-4">
                        <label>Id</label>
                        <input type="number" name="id" class="form-control" required>
                    </div>
                    <div class="form-group col-md-4">
                        <label>Name</label>
                        <input type="text" name="name" class="form-control" required>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <input type="submit" class="form-control btn btn-dark">
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>
