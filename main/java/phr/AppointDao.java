package phr;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import entity.appointentity;
import java.util.*;

public class AppointDao {

	public ArrayList appoints(String username) throws Exception {
		Connection con=dbConnect.connect();
		String query="select * from appointment where username=?";
		
		PreparedStatement pt=con.prepareStatement(query);
		pt.setString(1,username);
		ResultSet rs=pt.executeQuery();
		ArrayList<appointentity> list=new ArrayList<appointentity>();
		while(rs.next()) {
			
		String fullname=rs.getString(2);
		double mobilenum=rs.getDouble(3);
		String email=rs.getString(4);
		String doctorname=rs.getString(5);
		String specialist=rs.getString(6);
		String aptdate=rs.getString(7);
		String apttime=rs.getString(8);
		
		
		appointentity a=new appointentity();
		
		a.setFullname(fullname);
		a.setMobilenum(mobilenum);
		a.setEmail(email);
		a.setDoctorname(doctorname);
		a.setSpecialist(specialist);
		a.setAptdate(aptdate);
		a.setApttime(apttime);
		
		
		list.add(a);
		}
		return list;
	}
	public void cancel(String username,String Doctorname) throws Exception {
		Connection con=dbConnect.connect();
		String query1="Delete from appointment where username=? and doctorname = ?";
		
		PreparedStatement pt=con.prepareStatement(query1);
		pt.setString(1,username);
		pt.setString(2, Doctorname);
		int count=pt.executeUpdate();
		System.out.println(count+" rows deleted");
		
	}
	/*public static void main(String args[]) throws Exception {
		AppointDao a=new AppointDao();
		a.cancel("Ragu", "Amelia");
	}*/
	public ArrayList docappoint(String docname) throws Exception {
		Connection con=dbConnect.connect();
		String query1="Select * from appointment where doctorname=?";
		
		PreparedStatement pt=con.prepareStatement(query1);
		pt.setString(1,docname);
		
		ResultSet rs=pt.executeQuery();
		ArrayList<appointentity> list=new ArrayList<appointentity>();

		while(rs.next()) {
			
			String username=rs.getString(1);
			String fullname=rs.getString(2);
			double mobilenum=rs.getDouble(3);
			String email=rs.getString(4);
			String doctorname=rs.getString(5);
			String specialist=rs.getString(6);
			String aptdate=rs.getString(7);
			String apttime=rs.getString(8);
			
			
			appointentity a=new appointentity();
			
			a.setUsername(username);
			a.setFullname(fullname);
			a.setMobilenum(mobilenum);
			a.setEmail(email);
			a.setDoctorname(doctorname);
			a.setSpecialist(specialist);
			a.setAptdate(aptdate);
			a.setApttime(apttime);
			
			
			list.add(a);
			}
		return list;
	}
}
