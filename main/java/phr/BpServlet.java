package phr;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class BpServlet
 */
public class BpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		double systolic=Integer.parseInt(request.getParameter("systolic")) ;
		double diastolic=Integer.parseInt(request.getParameter("diastolic"));
		double pulse=Integer.parseInt(request.getParameter("pulse"));
		String sireg=request.getParameter("sireg");
		String date=request.getParameter("date");
		String time=request.getParameter("time");
		
		HttpSession session=request.getSession();
		String username=(String) session.getAttribute("username");
		
		
		
		RecordsDao bp=new RecordsDao();
		try {
			bp.bpupdate(username, systolic, diastolic, pulse, sireg, date, time);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		response.sendRedirect("Records.jsp");
	}

}
