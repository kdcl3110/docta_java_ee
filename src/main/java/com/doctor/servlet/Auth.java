package com.doctor.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.doctor.bean.Medecin;
import com.doctor.bean.Patient;
import com.doctor.bean.User;
import com.doctor.dao.AuthDao;
import com.doctor.dao.factory.DaoFactory;

/**
 * Servlet implementation class Auth
 */
public class Auth extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private AuthDao authDao;
	private User user = null;
	private Patient patient;
	private Medecin medecin;

	public void init() throws ServletException {
		DaoFactory daoFactory = DaoFactory.getInstance();
		this.authDao = daoFactory.getAuhtDao();
	}

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Auth() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String page = request.getParameter("page");
		if (page != null) {
			if (page.equals("login")) {
				this.getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
			} else if (page.equals("register")) {
				this.getServletContext().getRequestDispatcher("/register.jsp").forward(request, response);
			}
			this.getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
		}
		this.getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession sessions = request.getSession();
		
		String type = request.getParameter("type");
		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");
		
		if(type.equals("login")) {
			user = authDao.login(email, pwd);
			if(user != null) {
				request.setAttribute("userinfos", user.toString());
				sessions.setAttribute("user", user);
				//this.getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
				System.out.println(user.toString());
				sessions.setAttribute("page", "dashboard");
				response.sendRedirect("http://localhost:8080/Doctor/Patient?page=dashboard");
			}
//			System.out.println(user.toString());
		} else if(type.equals("register")) {
			String phone = request.getParameter("phone");
			String name = request.getParameter("name");
			
			User userRegister = new User();
			
			userRegister.setEmail(email);
			userRegister.setPwd(pwd);
			userRegister.setPhone(phone);
			userRegister.setName(name);
			
			user = authDao.register(userRegister);
			if(user != null) {
				request.setAttribute("userinfos", user.toString());
				sessions.setAttribute("page", "dashboard");
				sessions.setAttribute("user", user);
				//this.getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
				response.sendRedirect("http://localhost:8080/Doctor/Patient?page=dasboard");
			}
		} else if (type.equals("compet_patient")) {
			String dateNais = request.getParameter("date_nais");
			String sexe = request.getParameter("sexe");		
			String [] comple = {dateNais, sexe};
			patient = authDao.completPatient(user, comple);
		} else {
			String speciality = request.getParameter("speciality");
			medecin = authDao.completMedecin(user, speciality);
		}
	}

}
