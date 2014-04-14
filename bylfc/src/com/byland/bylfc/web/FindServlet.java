package com.byland.bylfc.web;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import com.byland.bylfc.dao.UsersDao;
import com.byland.bylfc.entity.Users;

/**
 * Servlet implementation class FindServlet
 */
public class FindServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		DataSource ds=(DataSource)getServletContext().getAttribute("DS");
		String nickname=request.getParameter("nickname");
		try {
			Users u=UsersDao.findByname(ds, nickname);
			request.getSession().setAttribute("others_info",u);
			response.sendRedirect("othershome.jsp");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		DataSource ds=(DataSource)getServletContext().getAttribute("DS");
		String nickname=request.getParameter("soso");
		try {
			Users u=UsersDao.findByname(ds, nickname);
			if(u!=null){
				request.getSession().setAttribute("others_info",u);
				response.sendRedirect("othershome.jsp");
			}else{
				response.sendRedirect("nousers.jsp");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
