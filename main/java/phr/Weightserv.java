package phr;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Weightserv
 */
@WebServlet("/Weightserv")
public class Weightserv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		double weight=Double.parseDouble(request.getParameter("weight"));
		String date=request.getParameter("date");
		String note=request.getParameter("note");
		
		HttpSession session=request.getSession();
		String username=(String) session.getAttribute("username");
		
		RecordsDao bp=new RecordsDao();
		
		try {
			bp.weightup(username ,weight, date, note);
			response.sendRedirect("Records.jsp");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
