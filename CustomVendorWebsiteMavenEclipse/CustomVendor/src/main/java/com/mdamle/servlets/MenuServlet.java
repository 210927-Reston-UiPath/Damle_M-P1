package com.mdamle.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mdamle.dao.ProductDao;
import com.mdamle.dao.postgresql.ProductDaoImpl;
import com.mdamle.model.Product;

/**
 * Servlet implementation class MenuServlet
 */
//@WebServlet("/MenuServlet")
public class MenuServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//System.out.println("servlet:lets connect");
		ProductDao dao = new ProductDaoImpl();
		Product product = new Product();
		dao.addProduct(product);
		//System.out.println("servlet:connectin?");
		request.getRequestDispatcher("underConstruction.jsp").forward(request, response);
	}
}
