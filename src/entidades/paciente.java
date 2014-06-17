package entidades;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.*;

@Entity
public class paciente extends pessoa {

	@Id
	@GeneratedValue
	private int idpac;
	private String endereco;
	private String bairro;
	private String cidade;
	private String estado;
	private String login;
	private String senha;
	
	@OneToMany(mappedBy="pac", cascade=CascadeType.PERSIST)
	private List<consulta> cons = new ArrayList<>();
	
	public int getIdpac() {
		return idpac;
	}
	public void setIdpac(int idpac) {
		this.idpac = idpac;
	}
	
	public String getEndereco() {
		return endereco;
	}
	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}
	public String getBairro() {
		return bairro;
	}
	public void setBairro(String bairro) {
		this.bairro = bairro;
	}
	public String getCidade() {
		return cidade;
	}
	public void setCidade(String cidade) {
		this.cidade = cidade;
	}
	public String getEstado() {
		return estado;
	}
	public void setEstado(String estado) {
		this.estado = estado;
	}
	public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login = login;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	public List<consulta> getCons() {
		return cons;
	}
	public void setCons(consulta cons) {
		this.cons.add(cons);
	}
	
}
