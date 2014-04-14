package com.byland.bylfc.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.byland.bylfc.entity.Note;

/**
 * Servlet implementation class NoteServlet
 */
public class NoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private List<Note> list;

	// 页面大小
	private int pageSize = 5;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public NoteServlet() {
		super();

		// 容器（数据结构）
		list = new ArrayList<>();
	}

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {

			list.add(new Note("作者 " , "内容 " ));
	}
       
    

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 加载数据
				String pStart = request.getParameter("start");
				int start = 1;
				if (pStart != null) {
					start = Integer.parseInt(pStart);
				}

				start--;

				// 获得部分数据(一页显示的数据)
				int end = (start + pageSize > list.size()) ? (list.size())
						: (start + pageSize);

				List<Note> onePage = list.subList(start, end);

				// 页面数
				int size = (int) Math.ceil(list.size() / Double.valueOf(pageSize));

				// 数组存储在请求作用域
				request.setAttribute("ONE_PAGE", onePage);
				request.setAttribute("SIZE", size);
				request.setAttribute("PAGE_SIZE", pageSize);

				request.getRequestDispatcher("show.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// 接收表单参数
		request.setCharacterEncoding("utf8");
		response.setCharacterEncoding("utf8");

		String author = request.getParameter("author");
		String content = request.getParameter("content");

		// 保存
		Note note = new Note(author, content);
		list.add(note);

		// 重新加载并显示
		response.sendRedirect("note");
	}

}
