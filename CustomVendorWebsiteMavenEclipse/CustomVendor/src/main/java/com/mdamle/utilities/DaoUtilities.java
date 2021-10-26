// Utilities class providing:
//	dependencies for
//		- DAOs
//		- Database connection
package com.mdamle.utilities;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import com.mdamle.dao.ProductDao;
import com.mdamle.dao.postgresql.ProductDaoImpl;

public class DaoUtilities {
	
	//connection info
	private static final String CONNECTION_USERNAME = "postgres";
	private static final String CONNECTION_PASSWORD = "testpostgres";
	private static final String URL = "jdbc:postgresql:teststd.cluster-cmspte9usi5h.us-east-2.rds.amazonaws.com:5432/teststd";
	private static Connection connection;
	
	
	/*-------------------------------------------------------------------------------*/
	
	public static synchronized Connection getConnection() throws SQLException {
		if(connection == null) {
			try {
				Class.forName("software.aws.rds.jdbc.postgresql.Driver");
			}catch(ClassNotFoundException e) {
				System.out.println("Could not register driver.");
				e.printStackTrace();
			}
			connection = DriverManager.getConnection(URL, CONNECTION_USERNAME, CONNECTION_PASSWORD);
		}
		
		if(connection.isClosed()) {
			System.out.println("Opening new connection...");
			connection = DriverManager.getConnection(URL, CONNECTION_USERNAME, CONNECTION_PASSWORD);
		}
		
		return connection;
	}
	
	
	/*-------------------------------------------------------------------------------*/
	// DAOs as dependencies
	
	public static ProductDao getProductDao() {
		return new ProductDaoImpl();
	}
}
