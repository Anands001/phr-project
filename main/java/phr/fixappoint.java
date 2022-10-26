package phr;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class fixappoint
 */
@WebServlet("/fixappoint")
public class fixappoint extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session=request.getSession();
		
		String username=(String) session.getAttribute("username");
		String fullname=request.getParameter("fullname");
		Double mobilenum=Double.parseDouble(request.getParameter("mobilenum"));
		String email=request.getParameter("email");
		
		String docname=request.getParameter("docname");
		String specialist=request.getParameter("specialist");
		
		String appointdate=request.getParameter("appointdate");
		String appointtime=request.getParameter("appointtime");
		
		Fixappointdao f=new Fixappointdao();
		
		try {
			f.fixapp(username, fullname, mobilenum, email, docname, specialist, appointdate, appointtime);
			
			response.sendRedirect("Appointments.jsp");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
