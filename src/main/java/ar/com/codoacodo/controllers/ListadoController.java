package ar.com.codoacodo.controllers;

import java.io.IOException;
import java.util.LinkedList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ar.com.codoacodo.connection.ServerHost;
import ar.com.codoacodo.daos.ProductoDAO;
import ar.com.codoacodo.dto.Producto;

@WebServlet("/api/ListadoController")
public class ListadoController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		ProductoDAO dao = new ProductoDAO(ServerHost.PostgreSQL);
		
		LinkedList<Producto> listado = dao.listarProductos();
		String ok = req.getParameter("successful");
		
		
		req.setAttribute("listado", listado);
		req.setAttribute("ok", ok);
		
		getServletContext().getRequestDispatcher("/listado.jsp").forward(req, resp);
	}
}

