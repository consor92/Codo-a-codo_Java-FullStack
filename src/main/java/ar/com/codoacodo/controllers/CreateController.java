package ar.com.codoacodo.controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ar.com.codoacodo.connection.ServerHost;
import ar.com.codoacodo.daos.ProductoDAO;

@WebServlet("/CreateController")
@MultipartConfig
public class CreateController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.sendError(404);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String nombre = req.getParameter("nombre");
		String precio = req.getParameter("precio");
		String imagen = req.getParameter("imagen");
		String codigo = req.getParameter("codigo");
		String descripcion = req.getParameter("descripcion");


		ProductoDAO dao = new ProductoDAO(ServerHost.PostgreSQL);
		dao.crearProducto(nombre, Float.parseFloat(precio), imagen, codigo, descripcion);

		resp.sendRedirect(req.getContextPath() + "/api/ListadoController?successful=" );
	}
}
