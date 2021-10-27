// Utilities class providing:
//	dependencies for
//		- DAOs
//		- Database connection
package com.mdamle.utilities;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import org.postgresql.Driver;

//import com.mdamle.dao.ProductDao;
//import com.mdamle.dao.postgresql.ProductDaoImpl;

public class DaoUtilities {
	
	//connection info
	private static final String CONNECTION_USERNAME = "nwzghlmt";
	private static final String CONNECTION_PASSWORD = "G8xql_1MSFzKxtkhIbT2G5NJWTMkpwfA";
	private static final String URL = "postgresql://nwzghlmt:G8xql_1MSFzKxtkhIbT2G5NJWTMkpwfA@fanny.db.elephantsql.com:5432/nwzghlmt";
	private static Connection connection;
	
	
	/*-------------------------------------------------------------------------------*/
	
	public static synchronized Connection getConnection() throws SQLException {
		if(connection == null) {
			try {
				Class.forName("org.postgresql.Driver");
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
	/*
	public static ProductDao getProductDao() {
		return new ProductDaoImpl();
	}
	*/
}
