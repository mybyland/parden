package com.byland.bylfc.web;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import com.byland.bylfc.exception.InvalidNameException;
import com.byland.bylfc.exception.InvalidPassword2Exception;
import com.byland.bylfc.exception.InvalidPasswordException;
import com.byland.bylfc.exception.PersonNameUsedException;
import com.byland.bylfc.service.UserService;

/**
 * Servlet implementation class RegisterServlet
 */
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
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
		String name = request.getParameter("nickname");
		String password = request.getParameter("password");
		String password2 = request.getParameter("password2");
	
		
		//调用模型
		DataSource ds = (DataSource) getServletContext().getAttribute("DS");
		
		UserService service = new UserService(ds);
		
		String errorMessage = "";
		try {
			service.register(name,password,password2);
			response.sendRedirect("login.jsp");
			return;
		} catch (InvalidNameException e) {
			
			
			errorMessage = "用户名无效";
			
		} catch (InvalidPasswordException e) {
			//密码无效
			errorMessage = "密码无效";
		} catch (InvalidPassword2Exception
				e) {
			//密码确认无效
			errorMessage = "密码不一致";
		} catch (SQLException e) {
			// 数据库操作出错
			errorMessage = "服务器出错了，稍后再试";
		} catch (PersonNameUsedException e) {
			//用户名已存在
			errorMessage = "用户名已存在";
		}
		
		request.setAttribute("ERROR", errorMessage);
		request.getRequestDispatcher("register.jsp").forward(request, response);
	}

}
