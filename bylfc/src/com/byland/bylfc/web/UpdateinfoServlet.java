package com.byland.bylfc.web;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import com.byland.bylfc.dao.UsersDao;

/**
 * Servlet implementation class UpdateinfoServlet
 */
public class UpdateinfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateinfoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String idvalue=request.getParameter("id");
		int id=Integer.parseInt(idvalue);
		String sex=request.getParameter("sex");
		String address=request.getParameter("address");
		DataSource ds=(DataSource)getServletContext().getAttribute("DS");
		if(ds!=null){
			try {
				if(UsersDao.singleinfo(ds,id)==null){
					UsersDao.saveinfo(ds,id,sex,address);
				}else{
					UsersDao.updateinfo(ds, id, sex, address);
				}
				response.sendRedirect("myinfo.jsp");
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

}
