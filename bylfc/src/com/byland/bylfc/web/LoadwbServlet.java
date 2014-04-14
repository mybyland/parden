package com.byland.bylfc.web;

import java.io.IOException;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 * Servlet implementation class LoadwbServlet
 */
public class LoadwbServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoadwbServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */

	public void init(ServletConfig config) throws ServletException {
		DataSource ds=null;
		try {
			Context initContext=new InitialContext();
			Context envContext=(Context) initContext.lookup("java:/comp/env");
			ds=(DataSource) envContext.lookup("jdbc/mine");
			System.out.println(ds);
			System.out.println(ds.getConnection());
		} catch (NamingException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		//存储到应用程序作用域
		if(ds!=null){
			config.getServletContext().setAttribute("DS",ds);
		}
	}

}
