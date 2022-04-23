package util;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDao;
import bean.UserBean;

/**
 * Servlet implementation class AddUserServlet
 */
public class AddUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddUserServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html");
		PrintWriter writer=response.getWriter();

		String fname=request.getParameter("fname");
		String number=request.getParameter("number");
		String email=request.getParameter("email");
		String address=request.getParameter("address");
		String password=request.getParameter("password");

		try{
			
			UserDao dao=new UserDao();
			
			UserBean user=new UserBean();

			user.setFname(fname);
			user.setNumber(number);
			user.setEmail(email);
			user.setAddress(address);
			user.setPassword(password);

			boolean b=dao.insert(user);
			
			if(b)
			{
				RequestDispatcher rd= request.getRequestDispatcher("Home.jsp");
				rd.forward(request, response);
			}
			else
			{
				writer.println("Failed to Register...");
				//System.out.println();
			}
			
		} catch (Exception e) {

			e.printStackTrace();
		}
	}
}
