package com.mdamle.utilities;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class TempDbConfigurator {
	private static Connection connection;
	private static PreparedStatement stmt;
	
	
	/*-------------------------------------------------------------------------------*/
	
	public static void main(String[] args) {
		System.out.println("creating table: "+"Test");
		System.out.println("method returned: "+createTableProducts());
	}
	
	
	/*-------------------------------------------------------------------------------*/
	
	private static Connection getConnection() {
		try {
			connection = DaoUtilities.getConnection();
			System.out.println("connection to Db established, perhaps");
		}catch(SQLException e) {
			System.out.println("db connection could not be made");
			e.printStackTrace();
		}
		return connection;
	}
	
	
	/*-------------------------------------------------------------------------------*/
	
	private static PreparedStatement prepareStatement(String sql) {//parameter name
		try {
			stmt = getConnection().prepareStatement(sql);
		}catch(SQLException e) {
			System.out.println("failed to prepare sql statement");
			e.printStackTrace();
		}
		return stmt;
	}
	
	
	/*-------------------------------------------------------------------------------*/
	
	private static Integer executeUpdate(PreparedStatement stmt) {
		try {
			return stmt.executeUpdate();
		}catch(SQLException e) {
			System.out.println("failed to execute update");
			e.printStackTrace();
			return null;
		}finally {
			closeResources();
		}
	}
	
	
	/*-------------------------------------------------------------------------------*/
	
	public static boolean createTableProducts() {		
		String sql = "CREATE TABLE Test" + "("
						+ "Id NOT NULL AUTO_INCREMENT, "
						+ "Name varchar(7) NOT NULL, "
						+ "Age int, "
						+ "PRIMARY KEY (Id)"
						+ ")" + ";";
		
		stmt = prepareStatement(sql);
		System.out.println("executing update");
		System.out.println("method returned: "+executeUpdate(stmt));
		return true;
	}
	
	
	/*-------------------------------------------------------------------------------*/
	
	private static void closeResources() {
		try {
			if(stmt != null) {
				stmt.close();
			}
		}catch(SQLException e) {
			System.out.println("Could not close connection!");
			e.printStackTrace();
		}
		
		try {
			if(connection != null) {
				connection.close();
			}
		}catch(SQLException e) {
			System.out.println("Could not close connection!");
			e.printStackTrace();
		}
	}
}
