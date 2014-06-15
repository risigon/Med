package entidades;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.*;

@Entity
public class medico extends pessoa {

	@Id
	@GeneratedValue
	private int idmed;
	private String crm;
	private String endereco;
	private String bairro;
	private String cidade;
	private String estado;
	private String login;
	private String senha;
	
	@OneToMany(mappedBy="med", cascade=CascadeType.PERSIST)
	private List<consulta> cons = new ArrayList<consulta>();
	
	public int getIdmed() {
		return idmed;
	}
	public void setIdmed(int idmed) {
		this.idmed = idmed;
	}
	public String getCrm() {
		return crm;
	}
	public void setCrm(String crm) {
		this.crm = crm;
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
