package StudentServlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import StudentDAO.StudentDatabase;
import StudentDTO.StudentDetails;

@WebServlet("/addstudent")
public class Addstudent extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		int id = Integer.parseInt(req.getParameter("id"));
		String name = req.getParameter("name");
		int tamil = Integer.parseInt(req.getParameter("tamil"));
		int english = Integer.parseInt(req.getParameter("english"));
		int physics = Integer.parseInt(req.getParameter("physics"));
		int chemistry = Integer.parseInt(req.getParameter("chemistry"));
		int maths = Integer.parseInt(req.getParameter("maths"));
		StudentDetails s = new StudentDetails(id, name, tamil, english, physics, chemistry, maths);
		int row;

		try {
			row = StudentDatabase.savestudent(s);
			if (row == 1) {
				req.setAttribute("msg", "Student Details Already Exist!!");
				req.getRequestDispatcher("Adminhome.jsp").include(req, resp);

			}

		} catch (ClassNotFoundException | SQLException e) {

			e.printStackTrace();
			req.setAttribute("msg", "Student Details Already Exist!!");
			req.getRequestDispatcher("Adminhome.jsp").include(req, resp);
		}
	}
}
