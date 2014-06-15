package util;
import javax.persistence.*;


public class JPAUtilis {
	
	private final static EntityManagerFactory fabrica = Persistence.createEntityManagerFactory("conexao_DB");

	
	public static EntityManager criarManager(){
		
		return fabrica.createEntityManager();
	}
}
