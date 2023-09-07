<%-- 
    Document   : newjsp
    Created on : 29 sept. 2021, 13:53:34
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8"> 
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Taller transacciones y tolerancia</title>
    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <link rel="icon" href="./resources/icons/cliente.png" type="image/png" />
</head>
<body>
<div class="container">
    <div class="card">
        <div class="card-header" >
            <h1>Gesti&oacute;n personas vacunadas</h1>
        </div>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand">Men&uacute;:</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav">
                    <a class="nav-link active" href="index.html">Inicio</a>
                </div>
            </div>
        </nav>

  <div class="row">
    <div class="col">
            Gr&aacute;ficas:
            <canvas id="grafica" width="400" height="200"></canvas>
            <canvas id="grafica2" width="400" height="200"></canvas>
            <canvas id="grafica3" width="400" height="200"></canvas>
        </div>
        <div class="col">
            Tabla de datos:
                <div class="form-row">
                    <div class="table-responsive" id="tabla" >
                        <table class="table table-striped">
                            <thead>
                            <th>Tipo persona</th>
                            <th>Fabricante</th>
                            </thead>
                            <tbody>
                                <c:forEach var="per_fab" items="${lista}">
                                    <tr>
                                        <td><c:out value="${per_fab.dep_universidad}"/></td>
                                        <td><c:out value="${per_fab.fabricante}"/></td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>    
        </div>      
  </div>
</div> 


        <div class="card-footer">
            <h6>Brayan Mauricio Cruz Mart&iacute;nez, 201812305</h6>
            <h6>Harold David Herrera &Aacute;lvarez, 201812237</h6>
            <h6>Juan Manuel L&oacute;pez Pach&oacute;n, 201812158</h6>
            <h6>Yesika Andrea Rojas Nu&ntilde;ez, 201814222</h6>
        </div>
    

    </div>


<script src="./js/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="./js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script src="./js/personaVac.js"></script>
</body>
<script>
    let canvas = document.getElementById("grafica").getContext("2d");
    var chart = new Chart(canvas,{
        type:"bar",
        data:{
            labels:["Pfizer","Janssen","AstraZeneca","Sinovac","Moderna"],
            datasets:[
                {
                    label:"Estudiante vs. Fabricante",
                    backgroundColor:['rgb(49,148,217)','rgb(240,67,50)'
                    ,'rgb(49,217,143)','rgb(125,217,124)','rgb(5,173,247)'],
                    data:[4,8,9,4,18]
                }
            ]
        }
    });
    
    let canvas2 = document.getElementById("grafica2").getContext("2d");
    var chart2 = new Chart(canvas2,{
        type:"bar",
        data:{
            labels:["Pfizer","Janssen","AstraZeneca","Sinovac","Moderna"],
            datasets:[
                {
                    label:"Docente vs. Fabricante",
                    backgroundColor:['rgb(49,148,217)','rgb(240,67,50)'
                    ,'rgb(49,217,143)','rgb(125,217,124)','rgb(5,173,247)'],
                    data:[4,8,9,4,18]
                }
            ]
        }
    });
    
    let canvas3 = document.getElementById("grafica3").getContext("2d");
    var chart3 = new Chart(canvas3,{
        type:"bar",
        data:{
            labels:["Pfizer","Janssen","AstraZeneca","Sinovac","Moderna"],
            datasets:[
                {
                    label:"Administrativos vs. Fabricante",
                    backgroundColor:['rgb(49,148,217)','rgb(240,67,50)'
                    ,'rgb(49,217,143)','rgb(125,217,124)','rgb(5,173,247)'],
                    data:[4,8,9,4,18]
                }
            ]
        }
    });
    
    
</script>
</html>

