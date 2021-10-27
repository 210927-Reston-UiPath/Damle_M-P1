import java.sql.Connection;
import java.sql.SQLException;

import com.mdamle.utilities.DaoUtilities;

public class TestGeneral {

	public static void main(String[] args) {
		System.out.println("Bellow hrils!");
		
		Connection conn = null;
		try {
			conn = DaoUtilities.getConnection();
			conn.close();
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}

}
