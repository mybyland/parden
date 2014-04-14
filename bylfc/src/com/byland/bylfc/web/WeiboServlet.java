package com.byland.bylfc.web;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import com.byland.bylfc.dao.UsersDao;
import com.byland.bylfc.entity.Info;
import com.byland.bylfc.entity.Some;
import com.byland.bylfc.entity.Users;

/**
 * Servlet implementation class WeiboServlet
 */
public class WeiboServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public WeiboServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		Users users = (Users) session.getAttribute("user_info");
		DataSource ds = (DataSource) getServletContext().getAttribute("DS");
		try {
			Info info=UsersDao.singleinfo(ds,users.getId());
			Some some=UsersDao.showusers(ds,users.getId());
			//存储属性,传递到页面
			request.setAttribute("INFO",info);
			request.setAttribute("SOME",some);
			//request.setAttribute("personList",);
			//请求转发
			request.getRequestDispatcher("homepage.jsp")
					.forward(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
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
