//Implementation of ProductDao interface to be used for PostgreSQL JDBC
package com.mdamle.dao.postgresql;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import com.mdamle.dao.ProductDao;
import com.mdamle.model.Product;
import com.mdamle.utilities.DaoUtilities;

public class ProductDaoImpl implements ProductDao{
	
	Connection connection;
	PreparedStatement stmt;
	
	
	/*-------------------------------------------------------------------------------*/

	@Override
	public boolean addProduct(Product product) {
		try {
			connection = DaoUtilities.getConnection();
			System.out.println("Connected?");
			return true;
		}catch(SQLException e) {
			e.printStackTrace();
			return false;
		}finally {
			closeResources();
		}
	}
	
	
	/*-------------------------------------------------------------------------------*/

	@Override
	public List<Product> getAll() {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	/*-------------------------------------------------------------------------------*/
	
	private void closeResources() {
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
