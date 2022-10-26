package phr;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class RecordsDao {

	
	
	public void bpupdate(String username,double systolic,double diastolic,double pulse,String IHD,String date,String time) throws Exception {
		
		Connection con=dbConnect.connect();
		
		String query="INSERT INTO `phr`.`bp` (`username`, `systolic`, `diastolic`, `pulse`, `IHD`, `date`, `time`) VALUES (?, ?, ?, ?, ?, ?, ?)";
		
		PreparedStatement pt=con.prepareStatement(query);
		pt.setString(1, username);
		pt.setDouble(2, systolic);
		pt.setDouble(3, diastolic);
		pt.setDouble(4, pulse);
		pt.setString(5, IHD);
		pt.setString(6, date);
		pt.setString(7, time);
		
		int count=pt.executeUpdate();
		System.out.println(count+" rows affected");
	}
	
	public void weightup(String username,double weight,String date,String note) throws Exception {
		
		Connection con=dbConnect.connect();
		
		String query="INSERT INTO `phr`.`weight` (`username`, `weight`, `date`, `note`) VALUES (?, ?, ?, ?)";
		PreparedStatement pt=con.prepareStatement(query);
		pt.setString(1, username);
		pt.setDouble(2, weight);
		pt.setString(3, date);
		pt.setString(4, note);
		
		int count=pt.executeUpdate();
		System.out.println(count+" rows affected");
	}
	public void addrecord(String username,String filename,String title,String recordsfor,String recordtype,String date,String comment) throws Exception {
	
		Connection con=dbConnect.connect();

		String query="INSERT INTO `phr`.`record` (`username`, `title`, `filename`, `Recordsfor`, `Recordtype`, `date`, `comment`) VALUES (?, ?, ?, ?, ?, ?, ?)";
		
		PreparedStatement pt=con.prepareStatement(query);
		pt.setString(1, username);
		pt.setString(2, title);
		pt.setString(3, filename);
		pt.setString(4, recordsfor);
		pt.setString(5, recordtype);
		pt.setString(6, date);
		pt.setString(7, comment);
		pt.setString(7, recordtype);
		
		int count=pt.executeUpdate();
		System.out.println(count+" rows affected");
	}

       public void heightup(String username,double height,String date,String note) throws Exception {
		
		Connection con=dbConnect.connect();
		
		String query="INSERT INTO `phr`.`height` (`username`, `height`, `date`, `note`) VALUES (?, ?, ?, ?)";
		PreparedStatement pt=con.prepareStatement(query);
		pt.setString(1, username);
		pt.setDouble(2, height);
		pt.setString(3, date);
		pt.setString(4, note);
		
		int count=pt.executeUpdate();
		System.out.println(count+" rows affected");
	}
}
