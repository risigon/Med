package entidades;

import java.sql.Date;

import javax.persistence.*;

@Entity
public class consulta {

	@Id
	@GeneratedValue
	private int id;
	
	@ManyToOne(fetch=FetchType.LAZY)
	private medico med;
	
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="idpac", referencedColumnName="idpac")
	private paciente pac;
	
	private String dtcons;
	private String hora;
	private String obs;
	private String retorno;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	public String getDtcons() {
		return dtcons;
	}
	public void setDtcons(String dtcons2) {
		this.dtcons = dtcons2;
	}
	public String getHora() {
		return hora;
	}
	public void setHora(String hora) {
		this.hora = hora;
	}
	public String getObs() {
		return obs;
	}
	public void setObs(String obs) {
		this.obs = obs;
	}
	public String getRetorno() {
		return retorno;
	}
	public void setRetorno(String retorno) {
		this.retorno = retorno;
	}
	public medico getMed() {
		return med;
	}
	public void setMed(medico med) {
		this.med = med;
	}
	public paciente getPac() {
		return pac;
	}
	public void setPac(paciente pac) {
		this.pac = pac;
	}
	
}
