
package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;


public class MSDB {
	private static final String connstr = "jdbc:sqlite:C:\\Assignment\\database\\SMSDB.db";
	private static Connection conn;
	private static ResultSet result;
	
	public static ResultSet query(String sql) throws Exception {
		Class.forName("org.sqlite.JDBC");
		conn = DriverManager.getConnection(connstr);
		Statement stmt = conn.createStatement();
		result = stmt.executeQuery(sql);
		
		return result;
	}
	
	public static int execute(String sql) throws Exception {
		Class.forName("org.sqlite.JDBC");
		conn = DriverManager.getConnection(connstr);
		Statement stmt = conn.createStatement();
		
		int count = stmt.executeUpdate(sql);		
		clean();
		
		return count;
	}
	// insert Students Table
	public static int insertStudent(String stuid, String stuname, String gender,String lvelId, String dob, String stadat, String endat) throws Exception{
		Class.forName("org.sqlite.JDBC");
		conn = DriverManager.getConnection(connstr);
		String sql = "INSERT INTO Students(student_id,student_name,gender,dob,start_date,end_date,level_id) VALUES(?,?,?,?,?,?,?)";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setObject(1, stuid);
		ps.setObject(2, stuname);
		ps.setObject(3, gender);
		ps.setObject(4, dob);
		ps.setObject(5, stadat);
		ps.setObject(6, endat);
		ps.setObject(7, lvelId);
		
		int count = ps.executeUpdate();
		conn.close();
		return count;
	}
	public static int insertLevel(String level, String fee) throws Exception{
		Class.forName("org.sqlite.JDBC");
		conn = DriverManager.getConnection(connstr);
		String sql = "INSERT INTO Levels(level,fee_per_term) VALUES(?,?)";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setObject(1, level);
		ps.setObject(2, fee);
		
		int count = ps.executeUpdate();
		conn.close();
		return count;
	}
	public static String Login(String username, String password) throws Exception {
		Class.forName("org.sqlite.JDBC");
		conn = DriverManager.getConnection(connstr);
		String sql = "SELECT * FROM Users WHERE username=? AND password=?";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setObject(1, username);
		ps.setObject(2, password);
		
		ResultSet result = ps.executeQuery();
		if(result.next()) {
			String uname = result.getString("username");
			conn.close();
			return uname;
		} else {
			conn.close();
			return null;
		}		
	}

	
	public static void clean() throws Exception {
		if(result != null) {
			result.close();
		}
		if(conn != null) {
			conn.close();
		}
	}
}

