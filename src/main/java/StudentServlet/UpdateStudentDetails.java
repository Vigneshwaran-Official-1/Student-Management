package StudentServlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import StudentDAO.StudentDatabase;
@WebServlet("/editstudentdetails")
public class UpdateStudentDetails extends  HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("Update Students");
		int id=Integer.parseInt(req.getParameter("id"));
		String name=req.getParameter("name");
		  System.out.println(name+"null");
		int tamil=Integer.parseInt(req.getParameter("tamil"));
		int english=Integer.parseInt(req.getParameter("english"));
		int physics=Integer.parseInt(req.getParameter("physics"));
		int chemistry=Integer.parseInt(req.getParameter("chemistry"));
		int maths=Integer.parseInt(req.getParameter("maths"));
		System.out.println(id+""+name+""+tamil+""+english);
		try {
			int row=StudentDatabase.updateStudent(id, name,tamil,english, physics, chemistry, maths);
			if(row==1) {
				req.setAttribute("success", "1");
				req.getRequestDispatcher("Adminhome.jsp").include(req, resp);
			}
			else {
				req.setAttribute("success", "0");
				req.getRequestDispatcher("Adminhome.jsp").include(req, resp);
			}
		} catch (SQLException | ClassNotFoundException e) {
			
			e.printStackTrace();
		}
	}
	
}
