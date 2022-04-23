package util;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.UserBean;
import dao.UserDao;


public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	public LoginServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	@SuppressWarnings("null")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PrintWriter writer=response.getWriter();
		response.setContentType("text/html");

		String email=request.getParameter("email");
		String password=request.getParameter("password");

		UserDao userdao=new UserDao();


		try {
			UserBean user=userdao.check(email, password);

			if(user == null )
			{
				RequestDispatcher dispatcher=request.getRequestDispatcher("Home.jsp");
				dispatcher.include(request, response);
			}
			else
			{
				HttpSession session=request.getSession();
				session.setAttribute("user", user);

				if(user.getEmail().equals(email) && user.getPassword().equals(password))
				{
					session.setAttribute("email", user.getEmail());
					RequestDispatcher dispatcher=request.getRequestDispatcher("Hotel.jsp");
					dispatcher.forward(request, response);
				}
				else
				{
					RequestDispatcher dispatcher=request.getRequestDispatcher("Home.jsp");
					dispatcher.include(request, response);
				}
			}
		}
		catch (ClassNotFoundException e) 
		{
			e.printStackTrace();
		}
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
	}
}
