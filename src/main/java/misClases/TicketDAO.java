package misClases;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class TicketDAO {
	Connection connection = null;

	public TicketDAO() throws ClassNotFoundException
	{
		Conexion conexion = new Conexion();
		connection = conexion.getConexion();
	}

	public ArrayList<Ticket> Listar() throws ClassNotFoundException
	{

	 ArrayList<Ticket>listaTickets = new ArrayList<>();

	 try {
		PreparedStatement pStatement = connection.prepareStatement("Select * from tickets");
		ResultSet rSet = pStatement.executeQuery();

		while (rSet.next()) {
			Ticket ticket = new Ticket();

			ticket.setId_ticket(rSet.getInt("id_ticket"));
			ticket.setNombre(rSet.getString("nombre"));
			ticket.setApellido(rSet.getString("apellido"));
			ticket.setMail(rSet.getString("mail"));
			ticket.setCategoria(rSet.getInt("categoria"));
			ticket.setCantidad(rSet.getInt("cantidad"));
			ticket.setMontoTotal(rSet.getDouble("montoTotal"));

			System.out.println(ticket);
			listaTickets.add(ticket);
		}
	} catch (SQLException e) {
		e.printStackTrace();
	}

		return listaTickets;
	}


	public boolean Agregar(Ticket ticket)
	{
		
		System.out.println(ticket);

	try {
		PreparedStatement pStatement = connection.prepareStatement("Insert into tickets(nombre,apellido,mail,categoria,cantidad,montoTotal) values (?,?,?,?,?,?)");
		pStatement.setString(1,ticket.getNombre());
		pStatement.setString(2,ticket.getApellido());
		pStatement.setString(3,ticket.getMail());
		pStatement.setInt(4,ticket.getCategoria());
		pStatement.setInt(5,ticket.getCantidad());
		pStatement.setDouble(6,ticket.getMontoTotal());

		pStatement.execute();

		return true;

	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}

	return false;

	}

	public boolean Eliminar(int id)
	{

		try {
			PreparedStatement pStatement = connection.prepareStatement("delete from tickets where id_ticket = ?");
			pStatement.setInt(1,id);

			pStatement.execute();

			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}


	  return false;
	}


}
