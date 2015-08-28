package verizon.montoring;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnectionClass {
	public Connection makeConnection() {
		String path = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@192.168.0.240:1521:orcl";
		String user = "scott";
		String password = "tiger";
		Connection conn = null;

		try {
			Class.forName(path);
			conn = DriverManager.getConnection(url, user, password);
		} catch (Exception e) {
			e.printStackTrace();

		}
		return conn;
	}

	public Connection makeConnectionTicket() {
		String path = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@192.168.0.209:1521:orcl";
		String user = "hr";
		String password = "hr";
		Connection conn = null;

		try {
			Class.forName(path);
			conn = DriverManager.getConnection(url, user, password);

		} catch (Exception e) {
			e.printStackTrace();

		}
		return conn;
	}

	public boolean closeConnection(Connection conn) {
		try {
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return true;
	}
}
