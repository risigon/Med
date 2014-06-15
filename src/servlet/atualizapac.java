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
import javax.servlet.http.HttpSession;

import util.JPAUtilis;
import entidades.paciente;

/**
 * Servlet implementation class atualizapac
 */
@WebServlet("/atualizapac")
public class atualizapac extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public atualizapac() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession sessao = request.getSession();
		
		if(sessao.getAttribute("usuario")!=null){		
				
		Integer id = Integer.parseInt(request.getParameter("id"));
		
		EntityManager conexao=JPAUtilis.criarManager();
		
		Query query = conexao.createQuery("select p From paciente p where p.idpac=:idbusca");
		query.setParameter("idbusca", id);
		
		List<paciente> pacientes = query.getResultList();
		
		request.setAttribute("paclista", pacientes);
		request.getRequestDispatcher("atualizaPac.jsp").forward(request, response);
	}
	else{
		request.getRequestDispatcher("login.jsp").forward(request, response);
	}
}
}
