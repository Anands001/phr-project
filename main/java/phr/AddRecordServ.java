package phr;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 * Servlet implementation class AddRecordServ
 */
@MultipartConfig
@WebServlet("/AddRecordServ")
public class AddRecordServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		FileItemFactory factory = new DiskFileItemFactory();
		ServletFileUpload upload = new ServletFileUpload(factory);
		 
		  Part part=request.getPart("inputdisimg"); 
		  String fileName =part.getSubmittedFileName(); 

		
		  String path = "C:\\Users\\sssan\\eclipse-workspace\\servletwork\\phr\\src\\main\\webapp\\images";
		
	      File file=new File(path);
		  part.write(path + File.separator + fileName);
		  
		  String title = request.getParameter("title");
		  String recordsfor = request.getParameter("recordsfor");
		  String recordtype = request.getParameter("recordtype");
		  String date = request.getParameter("date");
		  String comment = request.getParameter("comment");
		  
			RecordsDao bp=new RecordsDao();

			HttpSession session=request.getSession();
			String username=(String) session.getAttribute("username");
			try {
				bp.addrecord(username, fileName, title, recordsfor, recordtype, date, comment);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		  
		  System.out.println(fileName);
		  System.out.println(title);
		  response.sendRedirect("Records.jsp");

	}

}
