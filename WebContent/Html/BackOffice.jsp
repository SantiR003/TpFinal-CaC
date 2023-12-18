<%@page import="misClases.OradorDAO"%>
<%@page import="misClases.Orador"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="misClases.Ticket" %>
    <%@page import="misClases.TicketDAO" %>
    <%@page import="java.util.ArrayList"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <link rel="stylesheet" href="Css/parte1y2.css">
    <link rel="stylesheet" href="Css/parte3y4.css">
    <link rel="stylesheet" href="Css/2daParteTp.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
		integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<title>Back Office</title>
</head>
<body>

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
               <a href="FrontController?accion=registrar"><span>Comprar Tickets</span></a>
               <a href="FrontController?accion=BackOffice"> <span>Back Office</span> </a>
               </div>
            </div>
        </nav>
    </header>
<main>
 <div class="container">
 
  <h2 class="text-primary">Listado de Tickets</h2>
  
   <div class="row">
   
     <table>
       
       <thead> 
       
         <th>Id Venta</th>
         <th>Nombre</th>
         <th>Apellido</th>
         <th>Email</th>
         <th>Cantidad</th>
         <th>Categoria</th>
         <th>Monto Total</th>
         <th>Eliminar</th>
       </thead>
       <tbody>
       <%
       ArrayList<Ticket>ListaTickets = null;
       TicketDAO ticketDAO = new TicketDAO();
       
       ListaTickets = ticketDAO.Listar();
       
       for(int i = 0;i<ListaTickets.size();i++)
       {
    	 String Eliminar = "FrontController?accion=eliminar&id=" + ListaTickets.get(i).getId_ticket();
    	 String cat = "";
    	 if(ListaTickets.get(i).getCategoria() == 1)
    	 {
    		 cat = "Estudiante";
    	 }
    	 else if(ListaTickets.get(i).getCategoria() == 2)
    	 {
    		 cat = "Trainee";
    	 }
    	 else
    	 {
    		 cat = "Junior";
    	 }
       %>
       
       <tr>
        <td><%= ListaTickets.get(i).getId_ticket() %></td>
        <td><%= ListaTickets.get(i).getNombre() %></td>
        <td><%= ListaTickets.get(i).getApellido() %></td>
        <td><%= ListaTickets.get(i).getMail() %></td>
        <td><%= ListaTickets.get(i).getCantidad() %></td>
        <td><%= cat %></td>
        <td><%= ListaTickets.get(i).getMontoTotal() %></td>
        <td class="text-center"><a href=<%=Eliminar%>>Eliminar</a></td>
       </tr>
         <% } %>
      </tbody>
     </table>
     </div>
     
     <br>
     <br>
     
     <h2 class="text-primary">Listado de Oradores</h2>
     <div class="row">
     <table>
       
       <thead> 
       
         <th>Id Orador</th>
         <th>Nombre</th>
         <th>Apellido</th>
         <th>Texto</th>
         <th>Eliminar</th>
       </thead>
       <tbody>
       <%
       ArrayList<Orador>ListaOradores = null;
       OradorDAO oradorDAO = new OradorDAO();
       
       ListaOradores = oradorDAO.Listar();
       
       for(int i = 0;i<ListaOradores.size();i++)
       {
    	 String Eliminar = "FrontController?accion=eliminarO&id=" + ListaOradores.get(i).getId_Orador();
       %>
       
       <tr>
        <td><%= ListaOradores.get(i).getId_Orador() %></td>
        <td><%= ListaOradores.get(i).getNombre() %></td>
        <td><%= ListaOradores.get(i).getApellido() %></td>
        <td><%= ListaOradores.get(i).getTexto() %></td>
        <td class="text-center"><a href=<%=Eliminar%>>Eliminar</a></td>
       </tr>
         <% } %>
      </tbody>
     </table>
     
   </div>
   <br>
   <br>
     <a class="btn btn-success col-2 m-2" href="FrontController?accion=volver">Volver</a>
  
 
 </div>
 
 </main>
</body>
</html>