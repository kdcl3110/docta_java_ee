package com.doctor.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

/**
 * Servlet implementation class Patient
 */
public class Patient extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Patient() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());

		String page = request.getParameter("page");
		HttpSession session = request.getSession();

		if (page != null) {
			if (page.equals("follow")) {
				 session.setAttribute("page", "follow");
				this.getServletContext().getRequestDispatcher("/pages/patient/follow.jsp").forward(request, response);
			} else if (page.equals("notebook")) {
				session.setAttribute("page", "notebook");
				this.getServletContext().getRequestDispatcher("/pages/patient/notebook.jsp").forward(request, response);
			} else if (page.equals("history")) {
				session.setAttribute("page", "history");
				this.getServletContext().getRequestDispatcher("/pages/patient/history.jsp").forward(request, response);
			} else if (page.equals("appointment")) {
				session.setAttribute("page", "appointment");
				this.getServletContext().getRequestDispatcher("/pages/patient/appointment.jsp").forward(request, response);
			} else {
				session.setAttribute("page", "dashboard");
				this.getServletContext().getRequestDispatcher("/pages/patient/index.jsp").forward(request, response);
			}
		} else {
			session.setAttribute("page", "dashboard");
			this.getServletContext().getRequestDispatcher("/pages/patient/index.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
