package phr;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.*;


public class LoginDao {

	public boolean log(String username,String password) throws ClassNotFoundException, SQLException {
		String url="jdbc:mysql://localhost:3306/phr";
		String uname="root";
		String pass="1234";
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,uname,pass);
		
		String query="select * from user where username=? and password=?";
		
		PreparedStatement pt=con.prepareStatement(query);
		pt.setString(1, username);
		pt.setString(2, password);
		ResultSet rs=pt.executeQuery();
		
		if (rs.next()) {
			return true;
		}else {
			return false;
		}
		
	}

}
