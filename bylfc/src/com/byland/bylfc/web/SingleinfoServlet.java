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
 * Servlet implementation class SingleinfoServlet
 */
public class SingleinfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SingleinfoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String idvalue=request.getParameter("id");
		int id=Integer.parseInt(idvalue);
		DataSource ds=(DataSource)getServletContext().getAttribute("DS");
		Users users=null;
		if(ds!=null){
			try {
				users=UsersDao.findById(ds, id);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			request.setAttribute("USERS",users);
			request.getRequestDispatcher("singleinfo.jsp").forward(request,response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
