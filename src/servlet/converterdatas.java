package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class converterdatas
 */
@WebServlet("/converterdatas")
public class converterdatas extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public converterdatas() {
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
		// TODO Auto-generated method stub
	}
	
	public static String DateToData(String date) {
		String dia, mes, ano;
		ano = date.substring(0,4);
		mes = date.substring(5,7);
		dia = date.substring(8,10);
		return(dia+"/"+mes+"/"+ano); 
		}

		public static String DataToDate(String data) {
		String dia, mes, ano;
		dia = data.substring(0,2);
		mes = data.substring(3,5);
		ano = data.substring(6,10);
		return(ano+"-"+mes+"-"+dia); 
		}

}
