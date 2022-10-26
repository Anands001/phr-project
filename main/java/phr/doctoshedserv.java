package phr;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class doctoshedserv
 */
@WebServlet("/doctoshedserv")
public class doctoshedserv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String doctorname=request.getParameter("docname");
		System.out.println(doctorname);
		Doctordao d=new Doctordao();
		try {
			String specialist=d.doctordet(doctorname);
			HttpSession session=request.getSession();
		session.setAttribute("doctorname", doctorname);
		
		session.setAttribute("specialist", specialist);
		
		response.sendRedirect("fixappoint.jsp");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
