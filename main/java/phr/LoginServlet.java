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


public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname=request.getParameter("username");
		String password=request.getParameter("password");
		
		if((uname.equals("hanna")&&password.equals("1234"))||(uname.equals("amelia")&&password.equals("1234"))||(uname.equals("tomholland")&&password.equals("1234"))||(uname.equals("john")&&password.equals("1234"))) {
			HttpSession session=request.getSession();
			session.setAttribute("docname", uname);
			response.sendRedirect("Doctorlog.jsp");
		}
		
		System.out.println(uname+" "+password);
		LoginDao ld=new LoginDao();
		HttpSession session=request.getSession();
		try {
			if(ld.log(uname, password)) {
				session.setAttribute("username", uname);
				response.sendRedirect("index.jsp");	
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
