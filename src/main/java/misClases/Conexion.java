package misClases;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;




public class Conexion {

	public String driver = "com.mysql.cj.jdbc.Driver";

	public Connection getConexion() throws ClassNotFoundException
	{
		Connection connection = null;

		try {
			Class.forName(driver);
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/TpFinal-CaC","root","rubiniSantiago2023@");
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
		

		return connection;
	}


	public static void main(String[] args) throws ClassNotFoundException{
		Connection connection = null;
		Conexion conexion = new Conexion();
		connection = conexion.getConexion();

		try {

			PreparedStatement pS = connection.prepareStatement("Select * from tickets");
			ResultSet rs = pS.executeQuery();


		    while (rs.next()) {
				String nombre = rs.getString("nombre");
			    System.out.println(" Nombre: " + nombre);
			}
			rs.close();
			connection.close();
		} catch (SQLException e) {

			e.printStackTrace();
		}

		//Orador orador = new Orador("Santiago","Rubini","Rubini@gmail.com");
		//OradorDAO oradorDAO = new OradorDAO();
		
		//oradorDAO.Listar();
 
		//oradorDAO.Eliminar(11);






	}









}


