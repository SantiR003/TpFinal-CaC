package misClases;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class OradorDAO {
	Connection connection = null;

	public OradorDAO() throws ClassNotFoundException
	{
		Conexion conexion = new Conexion();
		connection = conexion.getConexion();
	}

	public ArrayList<Orador> Listar() throws ClassNotFoundException
	{

	 ArrayList<Orador>listaOradores = new ArrayList<>();

	 try {
		PreparedStatement pStatement = connection.prepareStatement("Select * from oradores");
		ResultSet rSet = pStatement.executeQuery();

		while (rSet.next()) {
			Orador orador = new Orador();

			orador.setId_Orador(rSet.getInt("id_orador"));
			orador.setNombre(rSet.getString("nombre"));
			orador.setApellido(rSet.getString("apellido"));
			orador.setTexto(rSet.getString("texto"));
		
			System.out.println(orador);
			listaOradores.add(orador);
		}
	} catch (SQLException e) {
		e.printStackTrace();
	}

		return listaOradores;
	}


	public boolean Agregar(Orador orador)
	{
		
		System.out.println(orador);

	try {
		PreparedStatement pStatement = connection.prepareStatement("Insert into oradores(nombre,apellido,texto) values (?,?,?)");
		pStatement.setString(1,orador.getNombre());
		pStatement.setString(2,orador.getApellido());
		pStatement.setString(3,orador.getTexto());

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
			PreparedStatement pStatement = connection.prepareStatement("delete from oradores where id_orador = ?");
			pStatement.setInt(1,id);

			pStatement.execute();

			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}


	  return false;
	}

}
