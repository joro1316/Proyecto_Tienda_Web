package entidad;

public class UsuarioDTO {

	 private int documento;
	 private String nomusuario;
	 private String clave;
	 private String rol;
	 private String estado;
	/**
	 * @param documento
	 * @param nomusuario
	 * @param clave
	 * @param rol
	 * @param estado
	 */
	public UsuarioDTO(int documento, String nomusuario, String clave, String rol, String estado) {
		super();
		this.documento = documento;
		this.nomusuario = nomusuario;
		this.clave = clave;
		this.rol = rol;
		this.estado = estado;
	}
	
	//metodos retorno. metodos getter y met setter.

public UsuarioDTO(int documento) {
		this.documento = documento;
		
}

	
	public int getDocumento() {
		return documento;
	}
	public void setDocumento(int documento) {
		this.documento = documento;
	}
	public String getNomusuario() {
		return nomusuario;
	}
	public void setNomusuario(String nomusuario) {
		this.nomusuario = nomusuario;
	}
	public String getClave() {
		return clave;
	}
	public void setClave(String clave) {
		this.clave = clave;
	}
	public String getRol() {
		return rol;
	}
	public void setRol(String rol) {
		this.rol = rol;
	}
	public String getEstado() {
		return estado;
	}
	public void setEstado(String estado) {
		this.estado = estado;
	}
	 
}
 