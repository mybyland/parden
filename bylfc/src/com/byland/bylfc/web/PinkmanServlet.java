package com.byland.bylfc.web;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import com.byland.bylfc.dao.PinkmanDao;

/**
 * Servlet implementation class PinkmanServlet
 */
public class PinkmanServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PinkmanServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		//
		String people=request.getParameter("people");
		String pname=request.getParameter("pname");
		String pricep=request.getParameter("price");
		String shuliangp=request.getParameter("shuliang");
		String address=request.getParameter("address");
		String miaoshu=request.getParameter("miaoshu");
		String phonenb=request.getParameter("phonenb");
		String datep=request.getParameter("datep");
//		price,pinkman_id,shuliang,address,people,phonenb,miaoshu,datep
//		int id=Integer.parseInt(idValue);
		int price = Integer.parseInt(pricep);
		int  shuliang= Integer.parseInt(shuliangp);
		//Date date = Date.parse(datep);
		DataSource ds=(DataSource) getServletContext().getAttribute("DS");
		String view;
		if(ds!=null){
			try {
				PinkmanDao.chaxunAll(ds,people,price,shuliang,address,phonenb,miaoshu,pname);
				//sendmessage(ds,id,content);
				//view="singlemessage.jsp";
				view="pushnong.jsp";
			} catch (SQLException e) {
				e.printStackTrace();
				view="";
			}
			response.sendRedirect(view);
		}
	}

}
