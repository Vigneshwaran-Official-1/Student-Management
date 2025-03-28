package StudentServlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
@WebServlet("/AdminSign-up")

public class AdminServlet  extends GenericServlet{

	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/office", "root", "roor");

			PreparedStatement pst = con.prepareStatement("INSERT INTO admin VALUES(?,?,?,?,?,?)");
			
			String id = req.getParameter("id1");

			String name = req.getParameter("name");
			
			String email = req.getParameter("email");

			String phone = req.getParameter("phone");
			
			String password = req.getParameter("password");
			
			String repassword = req.getParameter("re-password");
			
			

			int id1 = Integer.parseInt(id);
			
			int pho = Integer.parseInt(phone);
			
			pst.setInt(1, id1);
			pst.setString(2, name);
			pst.setString(3, email);
			pst.setInt(4, pho);
			pst.setString(5, password);
			if(password.equals(repassword))
			{
				pst.setString(6, repassword);
				
			}
			else {
				
			}
			
		} catch (ClassNotFoundException | SQLException e) {
			
			e.printStackTrace();
		}

	
		
		
		
	}
	
	
	
}
