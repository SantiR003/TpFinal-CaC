package misClases;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/FrontController")
public class FrontController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       
   
    public FrontController() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String accion = null;
		TicketDAO ticketDAO = null;
		OradorDAO oradorDAO = null;
		try {
			 ticketDAO = new TicketDAO();
			 oradorDAO = new OradorDAO();
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		}
		
		RequestDispatcher dispatcher = null;
		
		accion = request.getParameter("accion");
		
		if(accion == null || accion.isEmpty())
		{
			dispatcher = request.getRequestDispatcher("/Html/Conferencia.jsp");
		}
		else if(accion.equals("registrar"))
		{
			dispatcher = request.getRequestDispatcher("/Html/CompraTickets.jsp");
		}
		else if(accion.equals("BackOffice"))
		{
			dispatcher = request.getRequestDispatcher("/Html/BackOffice.jsp");
		}
		else if(accion.equals("eliminar"))
		{
			int Id = Integer.parseInt(request.getParameter("id"));
			ticketDAO.Eliminar(Id);
			
			dispatcher = request.getRequestDispatcher("/Html/BackOffice.jsp");
		}
		else if(accion.equals("eliminarO"))
		{
			int Id = Integer.parseInt(request.getParameter("id"));
			oradorDAO.Eliminar(Id);
			
			dispatcher = request.getRequestDispatcher("/Html/BackOffice.jsp");
		}
		else if(accion.equals("volver"))
		{
			dispatcher = request.getRequestDispatcher("/Html/Conferencia.jsp");
		}
		else if(accion.equals("insert"))
		{
		  String nombre = request.getParameter("nombre");	
		  String apellido = request.getParameter("apellido");	
		  String email = request.getParameter("email");	
		  int cantidad = Integer.parseInt(request.getParameter("cantidad"));
		  int categoria = Integer.parseInt(request.getParameter("categoria"));	
		  Double MontoTotal = 0.0; 	
		  
		  if (categoria == 1) {
			  MontoTotal = (200-(200*0.8))*cantidad;
		        
		    } else if (categoria == 2) {
		    	MontoTotal = (200-(200*0.5))*cantidad;
		    } else {
		    	MontoTotal = (200-(200*0.15))*cantidad;
		    }
		  
			
		  Ticket ticket = new Ticket(nombre,apellido,email,cantidad,categoria,MontoTotal);
		  ticketDAO.Agregar(ticket);
		  dispatcher = request.getRequestDispatcher("/Html/Conferencia.jsp");
			
		}
		else if(accion.equals("insertOrador"))
		{
		  String nombre = request.getParameter("nombre");	
		  String apellido = request.getParameter("apellido");	
		  String texto = request.getParameter("texto");	
		  
		  
		  Orador orador = new Orador(nombre,apellido,texto);
		  oradorDAO.Agregar(orador);
		  dispatcher = request.getRequestDispatcher("/Html/Conferencia.jsp");
			
		}
		
		dispatcher.forward(request,response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
