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
 * Servlet implementation class DeletenoteServlet
 */
public class DeletenoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeletenoteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String idValue=request.getParameter("id");
		int id=Integer.parseInt(idValue);
		DataSource ds=(DataSource) getServletContext().getAttribute("DS");
		String view;
		if(ds!=null){
			try {
				MessageDao.delmessage(ds,id);
				view="homepage.jsp";
			} catch (SQLException e) {
				e.printStackTrace();
				view="";
			}
			response.sendRedirect(view);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
