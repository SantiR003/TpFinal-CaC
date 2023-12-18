package misClases;

public class Ticket {
	private int id_ticket;
	private String nombre;
	private String apellido;
	private String mail;
	private int categoria;
	private int cantidad;
	private Double montoTotal;


	public Ticket() {

	}


	public Ticket(String nombre, String apellido, String mail, int categoria, int cantidad,
			Double montoTotal) {
		this.nombre = nombre;
		this.apellido = apellido;
		this.mail = mail;
		this.categoria = categoria;
		this.cantidad = cantidad;
		this.montoTotal = montoTotal;
	}


	public int getId_ticket() {
		return id_ticket;
	}


	public void setId_ticket(int id_ticket) {
		this.id_ticket = id_ticket;
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


	public String getMail() {
		return mail;
	}


	public void setMail(String mail) {
		this.mail = mail;
	}


	public int getCategoria() {
		return categoria;
	}


	public void setCategoria(int categoria) {
		this.categoria = categoria;
	}


	public int getCantidad() {
		return cantidad;
	}


	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}


	public Double getMontoTotal() {
		return montoTotal;
	}


	public void setMontoTotal(Double montoTotal) {
		this.montoTotal = montoTotal;
	}


	@Override
	public String toString() {
		return "Ticket [id_ticket=" + id_ticket + ", nombre=" + nombre + ", apellido=" + apellido + ", mail=" + mail
				+ ", categoria=" + categoria + ", cantidad=" + cantidad + ", montoTotal=" + montoTotal + "]";
	}

}
