package com.byland.bylfc.web;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import com.byland.bylfc.dao.MessageDao;

/**
 * Servlet implementation class LoveServlet
 */
public class LoveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoveServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stubrequest.setCharacterEncoding("utf-8");
		String idValue=request.getParameter("id");
		int id=Integer.valueOf(idValue);
		DataSource ds=(DataSource)getServletContext().getAttribute("DS");
		try {
			MessageDao.clickLove(ds,id);
			response.sendRedirect("singlemessage.jsp");
			//response.sendRedirect("homepage.jsp");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
