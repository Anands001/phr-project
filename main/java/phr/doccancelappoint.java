package phr;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Cancelappoint
 */
@WebServlet("/doccancelappoint")
public class doccancelappoint extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		
		String username=request.getParameter("username");
		String doctorname=request.getParameter("docname");
		
		AppointDao ad=new AppointDao();
		try {
			ad.cancel(username, doctorname);
			response.sendRedirect("Doctorlog.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
