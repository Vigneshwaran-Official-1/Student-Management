package StudentDAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import StudentDTO.StudentDetails;

public class StudentDatabase {

	public static Connection getConnection() throws ClassNotFoundException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		try {
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/office", "root", "roor");
			return con;
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return null;
	}

	public static int savestudent(StudentDetails sd) throws ClassNotFoundException, SQLException {
		Connection con = getConnection();
		PreparedStatement pst = con.prepareStatement("insert into studentdatabase values(?,?,?,?,?,?,?)");
		pst.setInt(1, sd.getId());
		pst.setString(2, sd.getName());
		pst.setInt(3, sd.getTamil());
		pst.setInt(4, sd.getEnglish());
		pst.setInt(5, sd.getPhysice());
		pst.setInt(6, sd.getChemistry());
		pst.setInt(7, sd.getMaths());
		return pst.executeUpdate();

	}

	public static StudentDetails findstudent(int id) throws ClassNotFoundException, SQLException {
		Connection con = getConnection();
		PreparedStatement pst = con.prepareStatement("select * from studentdatabase where id=?");
		pst.setInt(1, id);
		ResultSet rs = pst.executeQuery();
		if (rs.next()) {
			StudentDetails s = new StudentDetails(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4),
					rs.getInt(5), rs.getInt(6), rs.getInt(7));
			return s;

		}
		return null;

	}

	public static int deleteStudent(int id) throws ClassNotFoundException, SQLException {
		Connection con = getConnection();
		PreparedStatement pst = con.prepareStatement("delete from studentdatabase where id=?");
		pst.setInt(1, id);
		return pst.executeUpdate();

	}

	public static List<StudentDetails> findAllStudent() throws ClassNotFoundException, SQLException {
		Connection con = getConnection();
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("select * from studentdatabase");

		List<StudentDetails> l = new ArrayList<>();
		while (rs.next()) {
			StudentDetails s = new StudentDetails(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4),
					rs.getInt(5), rs.getInt(6), rs.getInt(7));
			l.add(s);

		}
		return l;

	}

	public static boolean findAdmin(String email, String Password) throws ClassNotFoundException, SQLException {
		Connection con = getConnection();
		PreparedStatement pst = con.prepareStatement("select * from admin where email=? and password=?");
		pst.setString(3, email);
		pst.setString(5, Password);
		ResultSet rs = pst.executeQuery();
		if (rs.next()) {
			return true;

		} else
			return false;

	}

	public static int saveAdmin(int id, String name, String email, int contact, String password)
			throws ClassNotFoundException, SQLException {
		Connection con = getConnection();
		PreparedStatement pst = con.prepareStatement("insert into admin values(?,?,?,?,?)");
		pst.setInt(1, id);
		pst.setString(2, name);
		pst.setString(3, email);
		pst.setInt(4, contact);
		pst.setString(5, password);
		return pst.executeUpdate();

	}

}
