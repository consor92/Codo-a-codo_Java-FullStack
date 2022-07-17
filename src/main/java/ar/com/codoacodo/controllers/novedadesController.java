package ar.com.codoacodo.controllers;

import java.io.IOException;
import java.util.Collections;
import java.util.LinkedList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.cj.x.protobuf.MysqlxCrud.Collection;

import ar.com.codoacodo.connection.ServerHost;
import ar.com.codoacodo.daos.ProductoDAO;
import ar.com.codoacodo.dto.Producto;

@WebServlet("/api/NovedadesController")
public class novedadesController extends HttpServlet {

	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.sendError(404);
	}	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		ProductoDAO dao = new ProductoDAO(ServerHost.PostgreSQL);
		
		LinkedList<Producto> listado = dao.listarProductos();
		
		Collections.reverse(listado);
		if(listado.size() > 9)
		{
			for(int i = 8 ; i <= listado.size() ; i++)
			{
				listado.remove( i );
			}
		}
		
		
		req.setAttribute("listado", listado);
		
		getServletContext().getRequestDispatcher("/novedades.jsp").forward(req, resp);
	}
}

