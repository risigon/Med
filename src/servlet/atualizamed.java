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
import entidades.medico;
import entidades.paciente;

/**
 * Servlet implementation class atualizamed
 */
@WebServlet("/atualizamed")
public class atualizamed extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public atualizamed() {
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
	
		Integer id = Integer.parseInt(request.getParameter("id"));
		
		EntityManager conexao=JPAUtilis.criarManager();
		
		Query query = conexao.createQuery("select p From medico p where p.idmed=:idbusca");
		query.setParameter("idbusca", id);
		
		List<medico> medicos = query.getResultList();
		
		request.setAttribute("medlista", medicos);
		request.getRequestDispatcher("atualizaMed.jsp").forward(request, response);
	}

		
	}


