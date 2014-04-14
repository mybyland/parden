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
 * Servlet implementation class PinkServlet
 */
public class PinkServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PinkServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		DataSource ds=(DataSource)getServletContext().getAttribute("DS");
		String people=request.getParameter("people");
		String pricep=request.getParameter("price");
		String shuliangp=request.getParameter("shuliang");
		String address=request.getParameter("address");
		String miaoshu=request.getParameter("miaoshu");
		String phonenb=request.getParameter("phonenb");
		String datep=request.getParameter("datep");
		int price = Integer.parseInt(pricep);
		int  shuliang= Integer.parseInt(shuliangp);
		/*try {
			//Users u=UsersDao.findByname(ds);
			request.getSession().setAttribute("others_info",u);
			response.sendRedirect("pushnong.jsp");
		} catch (SQLException e) {
			e.printStackTrace();
		}*/
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
