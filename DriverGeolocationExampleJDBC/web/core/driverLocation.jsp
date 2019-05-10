<%-- 
    Document   : driverLocation
    Created on : 9/05/2019, 09:01:13 PM
    Author     : Jhon Baron
--%>

<%@page import="com.driver.model.Driver"%>
<%@page import="com.driver.jdbc.DriverImpl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Driver Location</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://unpkg.com/leaflet@1.0.2/dist/leaflet.js"></script>
        <link rel="stylesheet" href="https://unpkg.com/leaflet@1.0.2/dist/leaflet.css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
        <%
            Driver driver = (Driver) session.getAttribute("driver");
        %>
        
        <style>
            #map {
                position: absolute;
                top: 0;
                bottom: 0;
                right: 0;
                left: 0;
            }
        </style>
    </head>
    <body>
        <!-- Map IMG Space -->
        <div id = 'map'>
        </div>

        <!-- Map script Space -->
        <script>
            function showPosition(position) {
                var map = L.map('map').setView([position.coords.latitude, position.coords.longitude], 17);
                $.ajax({
                    url: '../locationDriver',

                    data: {
                        'lat': position.coords.latitude,
                        'lng': position.coords.longitude,
                        'id': <%= driver.getId() %>,
                        'name': '<%= driver.getName() %>'
                    },
                    type: 'POST',
                    success: function (result) {
                        // If your backend page sends something back
//                        alert(result);
                    }
                });
                L.tileLayer('http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
                    attribution: 'Map data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, <a href="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="http://cloudmade.com">CloudMade</a>',
                    maxZoom: 18
                }).addTo(map);
                L.control.scale().addTo(map);
                L.marker([position.coords.latitude, position.coords.longitude]).addTo(map);
            }

            function geo_error() {
                alert("Sorry, no position available.");
            }

            function acucuracy() {
                var geo_options = {
                    enableHighAccuracy: true,
                    maximumAge: 30000,
                    timeout: 27000
                };
            }

            navigator.geolocation.watchPosition(showPosition, geo_error, acucuracy);

        </script>
    </body>
</html>
