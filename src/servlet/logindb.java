package servlet;

import java.io.IOException;
import java.security.NoSuchAlgorithmException;
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
import entidades.Login;

/**
 * Servlet implementation class logindb
 */
@WebServlet("/logindb")
public class logindb extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public logindb() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession sessao = request.getSession();
		String usuario = (String) sessao.getAttribute("usuario");
		
		if(sessao.isNew()){
			request.getRequestDispatcher("login.jsp").forward(request, response);	
		}
		else if(usuario==null){
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}else{
			request.getRequestDispatcher("menuAdmin.jsp").forward(request, response);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String usuario = request.getParameter("usuario");
		String passwd = request.getParameter("pass");
		
		String senha=null;
		try {
			senha = senhamd5.stringtomd5(passwd);
		} catch (NoSuchAlgorithmException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		
		EntityManager conexao=JPAUtilis.criarManager();
		
		try{
			
		Query query = conexao.createQuery("select p From Login p where p.usuario=:usu and p.senha=:sen");
		//Query query = conexao.createQuery("select p From Login p");
		query.setParameter("usu", usuario);
		query.setParameter("sen", senha);
		
		List<Login> log = query.getResultList();
		
		if(!log.isEmpty()){
			HttpSession sessao = request.getSession();
			sessao.setAttribute("usuario", usuario);
			request.setAttribute("user", usuario);
			request.getRequestDispatcher("menuAdmin.jsp").forward(request, response);
			
		}
			else{
				request.setAttribute("falha", "Erro de Autenticação");
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}
		}catch(Exception e){
			
		}finally{
		conexao.close();	
		}
	}	
	
}
