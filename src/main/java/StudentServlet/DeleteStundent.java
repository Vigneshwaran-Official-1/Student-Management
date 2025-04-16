package StudentServlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import StudentDAO.StudentDatabase;
@WebServlet("/delete")
public class DeleteStundent extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id=Integer.parseInt(req.getParameter("id"));
		try {
			int row=StudentDatabase.deleteStudent(id);
			if(row==1) {
				req.setAttribute("row", "1");
				req.getRequestDispatcher("Adminhome.jsp").include(req, resp);
			}
		} catch (SQLException | ClassNotFoundException e) {
			
			e.printStackTrace();
		}

	}
}
