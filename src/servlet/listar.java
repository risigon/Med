package servlet;

import java.io.IOException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.JPAUtilis;
import entidades.consulta;
import entidades.medico;
import entidades.paciente;

/**
 * Servlet implementation class listar
 */
@WebServlet("/listar")
public class listar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public listar() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String nome = request.getParameter("nome");
		String opc = request.getParameter("opc");
		
		switch(opc){
		
		case("listarmednome"):{
			listarMedNome(nome, request, response);
			break;
		}
		case("listarpacnome"):{
			listarPacNome(nome, request, response);
			break;
		}
		case("listarpac"):{
			listarPac(request, response);
			break;
		}
		case("listarmed"):{
			listarMed(request, response);
			break;
		}
		case("listarcon"):{
			listarCon(request, response);
			break;
		}
		
		}
		
		
	
		
	}
	
	protected void listarMedNome(String nome, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		EntityManager conexao=JPAUtilis.criarManager();
		
		Query q1 = conexao.createQuery("select count(*) from medico p where p.nome LIKE:nomebusca");
		q1.setParameter("nomebusca", "%"+nome+"%");
		List<Integer> qconta = q1.getResultList();
		request.setAttribute("contador", qconta);
		
		Query query = conexao.createQuery("select p From medico p where p.nome LIKE:nomebusca order by p.nome");
		query.setParameter("nomebusca", "%"+nome+"%");
		List<medico> medicos = query.getResultList();
		
		request.setAttribute("medlista", medicos);
		request.getRequestDispatcher("listarMedico.jsp").forward(request, response);
		
	}
	
protected void listarPacNome(String nome, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		EntityManager conexao=JPAUtilis.criarManager();
		
		Query q1 = conexao.createQuery("select count(*) from paciente p where p.nome LIKE:nomebusca");
		q1.setParameter("nomebusca", "%"+nome+"%");
		List<Integer> qconta = q1.getResultList();
		request.setAttribute("contador", qconta);
		
		Query query = conexao.createQuery("select p From paciente p where p.nome LIKE:nomebusca order by p.nome");
		query.setParameter("nomebusca", "%"+nome+"%");
		List<paciente> pacientes = query.getResultList();
		
		request.setAttribute("paclista", pacientes);
		request.getRequestDispatcher("listarPaciente.jsp").forward(request, response);
		
	}
	
protected void listarPac(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
	
	EntityManager conexao=JPAUtilis.criarManager();
	
	Query q1 = conexao.createQuery("select count(*) from paciente");
	List<Integer> qconta = q1.getResultList();
	request.setAttribute("contador", qconta);
	
	Query query = conexao.createQuery("select p From paciente p order by p.nome");
	List<paciente> pacientes = query.getResultList();
	
	request.setAttribute("paclista", pacientes);
	request.getRequestDispatcher("listarPaciente.jsp").forward(request, response);
	
}

protected void listarMed(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
	
	EntityManager conexao=JPAUtilis.criarManager();
	
	Query q1 = conexao.createQuery("select count(*) from medico");
	List<Integer> qconta = q1.getResultList();
	request.setAttribute("contador", qconta);
	
	Query query = conexao.createQuery("select p From medico p order by p.nome");
	List<medico> medicos = query.getResultList();
	
	request.setAttribute("medlista", medicos);
	request.getRequestDispatcher("listarMedico.jsp").forward(request, response);
	
}

protected void listarCon(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
	
	EntityManager conexao=JPAUtilis.criarManager();
	
	Query q1 = conexao.createQuery("select count(*) from consulta");
	List<Integer> qconta = q1.getResultList();
	request.setAttribute("contador", qconta);
	
	Query query = conexao.createQuery("select c From consulta c order by c.id");
	List<consulta> consultas = query.getResultList();
	
	request.setAttribute("conlista", consultas);
	request.getRequestDispatcher("listarConsulta.jsp").forward(request, response);
	
}


}
