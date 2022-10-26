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
@WebServlet("/Heightserv")
public class heightserv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		double height=Double.parseDouble(request.getParameter("height"));
		String date=request.getParameter("date");
		String note=request.getParameter("note");
		
		HttpSession session=request.getSession();
		String username=(String) session.getAttribute("username");
		
		RecordsDao bp=new RecordsDao();
		
		try {
			bp.heightup(username ,height, date, note);
			response.sendRedirect("Records.jsp");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
