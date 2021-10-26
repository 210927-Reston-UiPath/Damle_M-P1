// ? Does Spring change use of Product ?
package com.mdamle.dao;

import java.util.List;

//import com.mdamle.lib.Id;
import com.mdamle.model.Product;

public interface ProductDao {
	boolean addProduct(Product product);
	List<Product> getAll();
	//boolean updateProduct(Product product);
	//boolean removeProduct(Id id);
}
