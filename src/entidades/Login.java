package entidades;

import javax.persistence.*;

@Entity
public class Login {

	@Id
	@GeneratedValue
	private int idlog;
	@Column(name="usuario_log")
	private String usuario;
	@Column(name="senha_log")
	private String senha;
	
	
	public int getIdlog() {
		return idlog;
	}
	public void setIdlog(int idlog) {
		this.idlog = idlog;
	}
	
	public String getUsuario() {
		return usuario;
	}
	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
}
