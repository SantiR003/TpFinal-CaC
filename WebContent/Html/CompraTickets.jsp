<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="Css/parte1y2.css">
    <link rel="stylesheet" href="Css/parte3y4.css">
    <link rel="stylesheet" href="Css/2daParteTp.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
   
</head>
<body>
    <script src="Js/archivo.js"></script>
    <header>
        <nav>
            <div class="contenedor">
               <div id="logo">
                <img src="img/codoacodo.png" alt="">
                <h2>Conf Bs As</h2>
               </div>
               
               <div class="hipervinculos">
               <a href="FrontController?accion=">La Conferencia</a>
               <a href="FrontController?accion=">Los oradores</a>
               <a href="FrontController?accion=">El lugar y la Fecha</a>
               <a href="FrontController?accion=">Conviertete en orador</a>
               <a href="#"><span>Comprar Tickets</span></a>
               <a href="FrontController?accion=BackOffice"> <span>Back Office</span> </a>
               </div>
            </div>
        </nav>
    </header>


    <main>
        <!--Tarjetas precios-->
        <section>
        <div class="tarjetasPrecios">
             <div class="recuadrosPrecios" id="estudiante">
                
                <h2>Estudiante</h2>
                <h4>Tienen un descuento</h4>
                <h3 class="remarcado">80%</h3>
                <p class="textoGris">*presentar documentarion</p>
             
            </div>

             <div class="recuadrosPrecios" id="trainee" >
                <h2>Trainee</h2>
                <h4>Tienen un descuento</h4>
                <h3 class="remarcado">50%</h3>
                <p class="textoGris">*presentar documentarion</p>
             </div>

             <div class="recuadrosPrecios" id="junior">
                <h2>Junior</h2>
                <h4>Tienen un descuento</h4>
                <h3 class="remarcado">15%</h3>
                <p class="textoGris">*presentar documentarion</p>
             </div>
        </div>
        </section>

        <div class="titularVenta">
            <p>VENTA</p>
            <h2 id="titulitoVenta">VALOR DE TICKET $200</h2>
        </div>

        <section id="formularioCompra">
            <form action="FrontController?accion=insert" method="post">
                <div class="nombreYapellido">
                    <input type="text" placeholder="Nombre" required id="nombre" name="nombre">
                    <input type="text" placeholder="Apellido" required id="apellido" name="apellido">
                </div>
                <div class="correo">
                    <input type="text" placeholder="Correo" required id="correo" name="email">
                </div>
                

             <div class="contenedorCantidadCategoria">
               <div class="contenedorDentro">
               <label for="cantidad">Cantidad</label>
               <input type="number" placeholder="Cantidad" required id="cantidad" min="1" name="cantidad">
               </div>

              <div class="contenedorDentro">
                <label for="categoria">Categoria</label>
                <select name="categoria" id="categoria">
                    <option value="1">Estudiante</option>
                    <option value="2">Trainee</option>
                    <option value="3">Junior</option>
                </select>
              </div>
             </div>
               <div class="alerta2">
                <div class=" alerta alert alert-info" role="alert" id="totalPaga">
                 <p>Total a pagar: $</p>
                </div>
               </div>
             <div class="botonesFinales">
               <button type="button" id="borrar">Borrar</button>
               <button type="submit" id="comprar">Comprar</button>
              <button type="button" id="resumen">Resumen</button>
        </div>
        </form>
        </section>
        
      
    </main>


    <footer>
        <div class="footercito">
         <a href=""> Preguntas Frecuentes</a>
        
        <a href="">Contactanos</a>
        <a href="">Prensa</a>
        <a href="">Conferencias</a>
        
          <a href="">Terminos y 
                    condiciones</a>
       
        
        <a href="">Privacidad</a>
        <a href="">Estudiantes</a>

        </div>

        </footer>
    
</body>
</html>