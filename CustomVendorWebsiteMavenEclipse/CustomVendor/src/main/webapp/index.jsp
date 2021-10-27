<!-- Header -->
<jsp:include page="header.jsp"/>
	

<!-- Body -->
		<header>
			<title>Custom Vendor</title>
		</header>
		<div class="container">
			<div class="row">
				<h2>Welcome to Custom Vendor!</h2>
				<p>I'm a dog</p>
			</div>
			<div class="row">
				<div class="col-8">
					<h3>Products</h3>
					<table class="table" id="products-table">
						<thead>
							<th></th>
							<th>Name</th>
							<th>Price</th>
							<th>Discount</th>
							<th>Quantity</th>
							<th></th>
						</thead>
						<tbody>
							<tr id="products-table-row-1">
								<td id="product-image-1"></td>
								<td id="product-name-1">TEST PRODUCT 1</td>
								<td id="product-price-1">$108.00</td>
								<td id="product-discount-1">50%</td>
								<td id="product-quantity-1">
									<input type="number" class="input-number">
								</td>
								<td id="product-button-1">
									<input type="submit" value="Add to Cart" class="product-button">
								</td>
							</tr>
							<tr id="products-table-row-2">
								<td id="product-image-2"></td>
								<td id="product-name-2">TEST PRODUCT 2</td>
								<td id="product-price-2">$20.00</td>
								<td id="product-discount-2">none</td>
								<td id="product-quantity-2">
									<input type="number" class="input-number">
								</td>
								<td id="product-button-2">
									<input type="submit" value="Add to Cart" class="product-button">
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="col-4">
					<h3>Shopping Cart</h3>
					<table class="table" id="cart-table">
						<thead>
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
									<input type="submit" value="Place Order">
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

