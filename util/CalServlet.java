package util;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.MenuBean;
import dao.MenuDao;

/**
 * Servlet implementation class CalServlet
 */
public class CalServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CalServlet() {
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

		MenuDao dao = new MenuDao();

		ArrayList<MenuBean> al = new ArrayList<MenuBean>();

		String selectedProductsAll [] = request.getParameterValues("selectedProducts");

		for (String string : selectedProductsAll) 
		{
			MenuBean pojo=new MenuBean();
			pojo.setMname(string);
			int quant=Integer.parseInt(request.getParameter(string));
			pojo=dao.bill_Products(string, quant);
			al.add(pojo);
		}


		request.setAttribute("data",al);
		RequestDispatcher rd=request.getRequestDispatcher("totalBill.jsp");
		rd.forward(request, response);
	}
	public String removeSpaces1(String s1)
	{
		String s2=s1;
		s2=s2.replaceAll("_"," ");
		return s2;
	}
}