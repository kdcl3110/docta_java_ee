package com.doctor.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

/**
 * Servlet implementation class Medecin
 */
public class Medecin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Medecin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String page = request.getParameter("page");
		HttpSession session = request.getSession();

		if (page != null) {
			if (page.equals("patient")) {
				 session.setAttribute("page", "patient");
				this.getServletContext().getRequestDispatcher("/pages/medecin/patient.jsp").forward(request, response);
			} else if (page.equals("agenda")) {
				session.setAttribute("page", "agenda");
				this.getServletContext().getRequestDispatcher("/pages/medecin/agenda.jsp").forward(request, response);
			} else if (page.equals("RendezVous")) {
				session.setAttribute("page", "RendezVous");
				this.getServletContext().getRequestDispatcher("/pages/medecin/RendezVous.jsp").forward(request, response);
			} else if (page.equals("profil")) {
				session.setAttribute("page", "profil");
				this.getServletContext().getRequestDispatcher("/pages/medecin/profil.jsp").forward(request, response);
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
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
