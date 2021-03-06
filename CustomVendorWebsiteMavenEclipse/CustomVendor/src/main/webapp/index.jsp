<!-- Header -->
<jsp:include page="header.jsp"/>
	

<!-- Body -->
		<header>
			<title>Custom Vendor</title>
		</header>
		<div class="container-fluid">
			<div class="row">
				<h2>Welcome to Custom Vendor!</h2>
				<p>I'm a dog</p>
			</div>
			<div class="row">
				<div class="col-8">
					<h3>Products</h3>
					<table class="table table-success" id="products-table">
						<thead>
							<th></th>
							<th>Name</th>
							<th>Price</th>
							<th>Discount</th>
							<th>Quantity</th>
							<th></th>
							<th></th>
						</thead>
						<tbody>
							<tr id="products-table-row-1">
								<td id="product-image-1"></td>
								<td id="product-name-1">Salad</td>
								<td id="product-price-1">$10.00</td>
								<td id="product-discount-1">50%</td>
								<td id="product-quantity-1">
									<input type="number" class="input-number form-control-sm">
								</td>
								<td id="product-stock-1">in stock</td>
								<td id="product-button-1">
									<input type="submit" value="Add to Cart" class="product-button btn-primary btn">
								</td>
							</tr>
							<tr id="products-table-row-2">
								<td id="product-image-2"></td>
								<td id="product-name-2">Eggs</td>
								<td id="product-price-2">$3.99</td>
								<td id="product-discount-2">none</td>
								<td id="product-quantity-2">
									<input type="number" class="input-number form-control-sm">
								</td>
								<td id="product-stock-2">in stock</td>
								<td id="product-button-2">
									<input type="submit" value="Add to Cart" class="product-button btn-primary btn">
								</td>
							</tr>
							<tr id="products-table-row-3">
								<td id="product-image-3"></td>
								<td id="product-name-3">Fruit Loops</td>
								<td id="product-price-3">$4.00</td>
								<td id="product-discount-3">25%</td>
								<td id="product-quantity-3">
									<input type="number" class="input-number form-control-sm">
								</td>
								<td id="product-stock-3">out of stock</td>
								<td id="product-button-3">
									<input type="submit" value="Add to Cart" class="product-button btn-primary btn">
								</td>
							</tr>
							<tr id="products-table-row-4">
								<td id="product-image-4"></td>
								<td id="product-name-4">Sliced Bacon</td>
								<td id="product-price-4">$8.00</td>
								<td id="product-discount-4">75%</td>
								<td id="product-quantity-4">
									<input type="number" class="input-number form-control-sm">
								</td>
								<td id="product-stock-4">in stock</td>
								<td id="product-button-4">
									<input type="submit" value="Add to Cart" class="product-button btn-primary btn">
								</td>
							</tr>
							<tr id="products-table-row-5">
								<td id="product-image-5"></td>
								<td id="product-name-5">Milk</td>
								<td id="product-price-5">$3.00</td>
								<td id="product-discount-5">none</td>
								<td id="product-quantity-5">
									<input type="number" class="input-number form-control-sm">
								</td>
								<td id="product-stock-5">in stock</td>
								<td id="product-button-5">
									<input type="submit" value="Add to Cart" class="product-button btn-primary btn">
								</td>
							</tr>
							<tr id="products-table-row-6">
								<td id="product-image-6"></td>
								<td id="product-name-6">Bread</td>
								<td id="product-price-6">$1.25</td>
								<td id="product-discount-6">20%</td>
								<td id="product-quantity-6">
									<input type="number" class="input-number form-control-sm">
								</td>
								<td id="product-stock-6">in stock</td>
								<td id="product-button-6">
									<input type="submit" value="Add to Cart" class="product-button btn-primary btn">
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="col-4 card">
					<h3>Shopping Cart</h3>
					<table class="table shadow" id="cart-table">
						<thead class="thead-dark">
							<tr>
								<th>Product</th>
								<th>Quantity</th>
								<th>Sub Total</th>
							</tr>
						</thead>
						<tbody id="cart-body">
						</tbody>
						<tfoot>
							<tr>
								<td id="cart-total">Total:</td>
								<td id="cart-total-value">0</td>
								<td id="cart-submit">
									<input type="submit" value="Place Order" class="btn-danger btn">
								</td>
							</tr>
						</tfoot>
					</table>
				</div>
			</div>
		</div>
		
		<footer>
			<script src="resources/scripts/orderingPage.js"></script>
		</footer>
<!-- Footer -->
<jsp:include page="footer.jsp"/>

