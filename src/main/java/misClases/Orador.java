package misClases;

public class Orador {

	private int id_Orador;
	private String nombre;
	private String apellido;
	private String texto;

	public Orador() {

	}


	public Orador(String nombre, String apellido, String texto) {
		this.nombre = nombre;
		this.apellido = apellido;
		this.texto = texto;
	}


	public int getId_Orador() {
		return id_Orador;
	}


	public void setId_Orador(int id_Orador) {
		this.id_Orador = id_Orador;
	}


	public String getNombre() {
		return nombre;
	}


	public void setNombre(String nombre) {
		this.nombre = nombre;
	}


	public String getApellido() {
		return apellido;
	}


	public void setApellido(String apellido) {
		this.apellido = apellido;
	}


	public String getTexto() {
		return texto;
	}


	public void setTexto(String texto) {
		this.texto = texto;
	}


	@Override
	public String toString() {
		return "Orador [id_Orador=" + id_Orador + ", nombre=" + nombre + ", apellido=" + apellido + ", texto=" + texto
				+ "]";
	}
	
	
}
