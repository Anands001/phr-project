package phr;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Doctordao {

	public String doctordet(String docname) throws Exception {
		Connection con=dbConnect.connect();
		
		String query="select doctorname,specialist from doctor where doctorname like ?";
		
		PreparedStatement pt=con.prepareStatement(query);
		pt.setString(1, docname);
		ResultSet rs=pt.executeQuery();
		if(rs.next()) {
		String doctorname=rs.getString(1);
		String specialist=rs.getString(2);
		
		System.out.println(doctorname+" "+specialist);
		return specialist;
		}else {
		return "something went wrong";
		}
	}
	public static void main(String args[]) throws Exception {
		Doctordao d1=new Doctordao();
		String spe=d1.doctordet("john");
		System.out.println(spe);

	}
}
