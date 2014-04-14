package com.byland.bylfc.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TalkServlet
 */
public class TalkServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TalkServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    @Override
    public void destroy() {
    	// TODO Auto-generated method stub
    	super.destroy();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		   this.doPost(request, response);
			response.setContentType("text/html");
			//PrintWriter out = response.getWriter();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
       response.setCharacterEncoding("utf-8");
      request.setCharacterEncoding("utf-8");
       //String demo=request.getParameter("message");
      // String str=new String(demo.getBytes("Iso-885-1"),"gbk()");
		ServletContext sc=this.getServletContext();
		//String uname=(String) request.getSession().getAttribute("aa");
		//System.out.println(uname);
		String amessage=(String) sc.getAttribute("message");
		//String unames=(String) sc.getAttribute("username");
		sc.setAttribute("message", amessage+request.getParameter("username")+"说:"+request.getParameter("message")+"\r\n");
		response.sendRedirect("tode.jsp");
	}
	public void init() throws ServletException {
	}

}
