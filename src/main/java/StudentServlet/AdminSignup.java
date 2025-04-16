package StudentServlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import StudentDAO.StudentDatabase;

@WebServlet("/Adminsignup1")

public class AdminSignup extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id=Integer.parseInt(req.getParameter("id"));
		String name=req.getParameter("name");
		long contact =Long.parseLong(req.getParameter("contact"));
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		int row;
		try {
			row = StudentDatabase.saveAdmin(id, name, email, contact, password );
			if(row==1) {
				req.setAttribute("message", "Admin Signup Success ");
				req.getRequestDispatcher("Adminlogin.jsp").forward(req, resp);
			}
			
		} catch (SQLException | ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			req.setAttribute("message","Already admin exist!");
			req.getRequestDispatcher("Adminlogin.jsp").forward(req, resp);
		}
		
	}
}
