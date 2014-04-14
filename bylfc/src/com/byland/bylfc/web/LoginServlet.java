package com.byland.bylfc.web;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Map;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import com.byland.bylfc.dao.UsersDao;
import com.byland.bylfc.entity.Users;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Map<String,Users> users;
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	public void init(ServletConfig config) throws ServletException {
		super.init(config);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		DataSource ds=(DataSource)getServletContext().getAttribute("DS");
		try {
			users=UsersDao.findAll(ds);
			/*System.out.println(users.toString());*/
		} catch (SQLException e) {
			e.printStackTrace();
		}
		String nickname=request.getParameter("nickname");
		String password=request.getParameter("password");
		if(nickname!=null && nickname.length()>0){
			if(users.containsKey(nickname)){
				//用户存在
				Users u=users.get(nickname);
				if(u.getPassword().equals(password)){
					//密码匹配
					request.getSession().setAttribute("user_info",u);
					response.sendRedirect("homepage.jsp");
					//response.sendRedirect("weibo");
				}else{
					//密码不匹配
					request.setAttribute("error_code",nickname+"密码错误");
					request.getRequestDispatcher("login.jsp").forward(request,response);
				}
			}else{
				//用户不存在
				request.setAttribute("error_name",nickname+"用户不存在");
				request.getRequestDispatcher("login.jsp").forward(request,response);
			}
		}else{
			//输入为空
			request.setAttribute("null_info","请不要做无效的输入");
			request.getRequestDispatcher("login.jsp").forward(request,response);
		}
	}


}
