package servlet;

import java.io.IOException;
import java.security.NoSuchAlgorithmException;

import javax.persistence.EntityManager;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import util.JPAUtilis;
import entidades.Login;

/**
 * Servlet implementation class cadUsuario
 */
@WebServlet("/cadUsuario")
public class cadUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public cadUsuario() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession sessao = request.getSession();
		
		if(sessao.getAttribute("usuario")!=null && sessao.getAttribute("usuario")!=""){		
			request.getRequestDispatcher("cadUsuario.jsp").forward(request, response);
		}else{
			request.getRequestDispatcher("login.jsp").forward(request, response);
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
		
		try{
			inserirUsuario(usuario, senha);
		}catch(Exception e){
			
		}finally{
			request.getRequestDispatcher("cadUsuario.jsp").forward(request, response);
		}
		
	}
	
	protected void inserirUsuario(String usuario, String senha){
		
		Login log = new Login();
		
		log.setUsuario(usuario);
		log.setSenha(senha);
		
		 //criar conexao
		 EntityManager conexao=JPAUtilis.criarManager();
		 try{
		 conexao.getTransaction().begin();
		 conexao.persist(log);
		 conexao.getTransaction().commit();
		 }catch(Exception e){
			 
		 }finally{
		 conexao.close();
		 }	 

		
	}

}
