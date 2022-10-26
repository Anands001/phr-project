package phr;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class Fixappointdao {

	public void fixapp(String username,String fullname,Double mobilenum,String email,String docname,String specialist,String aptdate,String apttime) throws Exception {
		Connection con=dbConnect.connect();
		
		String query="INSERT INTO `phr`.`appointment` (`username`, `fullname`, `mobilenum`, `email`, `doctorname`, `specialist`, `aptdate`, `apttime`) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
	
		PreparedStatement pt=con.prepareStatement(query);
		pt.setString(1, username);
		pt.setString(2, fullname);
		pt.setDouble(3, mobilenum);
		pt.setString(4, email);
		pt.setString(5, docname);
		pt.setString(6, specialist);
		pt.setString(7, aptdate);
		pt.setString(8, apttime);
		
		int count=pt.executeUpdate();
		
		System.out.println(count +" rows affected");
	}
}
