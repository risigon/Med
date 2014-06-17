package servlet;

import java.io.IOException;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import util.JPAUtilis;
import entidades.consulta;
import entidades.medico;
import entidades.paciente;

/**
 * Servlet implementation class cadConsulta2
 */
@WebServlet("/cadConsulta2")
public class cadConsulta2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public cadConsulta2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession sessao = request.getSession();
		
		if(sessao.getAttribute("usuario")!=null){		
			request.getRequestDispatcher("cadConsulta.jsp").forward(request, response);
		}else{
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String cpf = request.getParameter("cpf");
		String crm = request.getParameter("crm");
		String dtcons = request.getParameter("dataconsulta");
		String horacons = request.getParameter("horaconsulta");
		String obs = request.getParameter("obs");
		String retorno = request.getParameter("retorno");
						
		//inserirConsulta(cpf, crm, dtcons, horacons, obs, retorno);
		
		System.out.println("Id = " +validarcrm(crm));
						
		request.getRequestDispatcher("cadConsulta").forward(request, response);
	
	}
	
private static void inserirConsulta(String crm, String cpf, String dtcons, String horacons, String obs, String retorno){
		
		//criar conexao
		EntityManager conexao=JPAUtilis.criarManager();
		
		consulta con = new consulta();
				
				 
		 conexao.getTransaction().begin();
		 conexao.persist(con);
		 conexao.getTransaction().commit();
		  
		 conexao.close();
		 	 
		 
	}
	
private static Integer validarcrm(String crm){
	medico med = new medico();
			
	 //criar conexao
	 EntityManager conexao=JPAUtilis.criarManager();
	 
	 Query q1 = conexao.createNativeQuery("select m.idmed from medico m where m.crm=:crmmed");
	 q1.setParameter("crmmed", crm);
	 Integer id = q1.getMaxResults();
	 		  
	 conexao.close();
	return id;
	 	 
	 
}

private static paciente validarcpf(String cpf){
	paciente pac = new paciente();
			
	 //criar conexao
	 EntityManager conexao=JPAUtilis.criarManager();
	 
	 Query q2 = conexao.createNativeQuery("select p From paciente p where p.cpf=:cpfpac");
	 q2.setParameter("cpfpac", cpf);
	 pac = (paciente) q2.getSingleResult();
	 
	 //System.out.println("Nome : "+pac.getNome()+"CPF : "+pac.getCpf());
	  
	 conexao.close();
	return pac;
	 	 
	 
}
	
}
