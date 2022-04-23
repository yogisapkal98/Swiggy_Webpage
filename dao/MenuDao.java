package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;




import bean.MenuBean;

public class MenuDao {
	
	boolean ans=false;
	//String sql="select * from menu;";
	
	public List<MenuBean> getAllProducts(String sql) {

		List<MenuBean> list= new ArrayList<MenuBean>();

		try {

			MenuDao dao = new MenuDao();
			Class.forName("com.mysql.jdbc.Driver");

			Connection con=DriverManager.getConnection("jdbc:mysql://192.168.57.5:3306/NT02484","yogesh.sapkal","pass@123");

			PreparedStatement st=con.prepareStatement(sql);
			ResultSet rs = st.executeQuery();


			while(rs.next())
			{
				MenuBean u = new MenuBean();
				u.setMname(rs.getString(1));
				u.setMdetails(rs.getString(2));
				u.setMprice(rs.getInt(3));

				list.add(u);
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		return list ;
	}


	public MenuBean bill_Products(String string, int quant) {
		
		MenuBean MenuBean = new MenuBean();
		String sql="select * from menu where mname=?";
		
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");

			Connection con=DriverManager.getConnection("jdbc:mysql://192.168.57.5:3306/NT02484","yogesh.sapkal","pass@123");
			PreparedStatement ptmt=con.prepareStatement(sql);
			ptmt.setString(1, string);
			
			ResultSet rs=ptmt.executeQuery();
			while(rs.next()) {
				MenuBean.setMname(rs.getString(1));
				MenuBean.setMdetails(rs.getString(2));
				MenuBean.setMprice(rs.getInt(3));
				
				MenuBean.setQuantity(quant);
			}
			con.close();
		} 
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return MenuBean;
	}
}
