package com.byland.bylfc.web;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import com.byland.bylfc.dao.CommentsDao;
import com.byland.bylfc.dao.MessageDao;
import com.byland.bylfc.entity.Message;

/**
 * Servlet implementation class PinglunnoteServlet
 */
public class PinglunnoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PinglunnoteServlet() {
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
		Message message=null;
		if(ds!=null){
			try {
				message=MessageDao.getMessageById(ds,id);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		request.setAttribute("MESSAGE",message);
		request.getRequestDispatcher("pinglunnote.jsp").forward(request,response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String idvalue=request.getParameter("message_id");
		int message_id=Integer.parseInt(idvalue);
		String id=request.getParameter("users_id");
		int users_id=Integer.parseInt(id);
		String com_content=request.getParameter("com_content");
		DataSource ds=(DataSource) getServletContext().getAttribute("DS");
		try {
			CommentsDao.sendcomments(ds,message_id,users_id,com_content);
			response.sendRedirect("singlemessage.jsp");
			//response.sendRedirect("homepage.jsp");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
