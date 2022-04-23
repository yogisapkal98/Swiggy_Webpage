package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import bean.UserBean;

public class UserDao {
	
	public boolean insert(UserBean bin) throws Exception
	{
			Class.forName("com.mysql.jdbc.Driver");

			Connection con=DriverManager.getConnection("jdbc:mysql://192.168.57.5:3306/NT02484","yogesh.sapkal","pass@123");

			PreparedStatement st=con.prepareStatement("insert into user(fname,number,email,address,password) values(?,?,?,?,?)");

			st.setString(1, bin.getFname());
			st.setString(2, bin.getNumber());
			st.setString(3, bin.getEmail());
			st.setString(4, bin.getAddress());
			st.setString(5, bin.getPassword());


			int i=st.executeUpdate();
			
			con.close();
			
			if(i>0)
			{
				return true;
				
			}
			else
			{
				return false;
				
			}
			
	}
	public UserBean check(String emailt,String passwordt) throws ClassNotFoundException, SQLException
	{
		Class.forName("com.mysql.jdbc.Driver");

		Connection con=DriverManager.getConnection("jdbc:mysql://192.168.57.5:3306/NT02484","yogesh.sapkal","pass@123");

		UserBean user= null ;
		ResultSet rs =null;
		String sql="select * from user where email=? and password=?";

		PreparedStatement statement=con.prepareStatement(sql);
		statement.setString(1, emailt);
		statement.setString(2, passwordt);



		rs = statement.executeQuery();

		if( rs != null)
		{
			try {
				rs.next();

				int id=rs.getInt("uid");
				String password=rs.getString("password");
				String email=rs.getString("email");
				System.out.println("Name "+password);
				System.out.println("email  "+email);

				user = new UserBean();

				
				user.setPassword(password);
				user.setEmail(email);

				if(user.getEmail().equals(email)&& user.getPassword().equals(password))
				{
					
					con.close();
					
				}
			}catch(Exception e)
			{	
				e.printStackTrace();
			}
		}
		return user ;
	}


}
