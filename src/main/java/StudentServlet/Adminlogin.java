package StudentServlet;

import java.io.IOException;
import java.net.BindException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import StudentDAO.StudentDatabase;

@WebServlet("/Adminlogin")

public class Adminlogin extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		boolean valid;

		try {
			valid = StudentDatabase.findAdmin(email, password);
			if (valid) {
				req.setAttribute("message", "Login Success");
				req.getRequestDispatcher("Adminhome.jsp").include(req, resp);

			} else {
				req.setAttribute("message", "Invalid Credentails");
				req.getRequestDispatcher("Adminhome.jsp").include(req, resp);

			}

		} catch (BindException | SQLException | ClassNotFoundException e) {

			e.printStackTrace();
		}

	}

}
