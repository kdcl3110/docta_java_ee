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
			} else if (page.equals("complete")) {
				this.getServletContext().getRequestDispatcher("/completProfile.jsp").forward(request, response);
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

		if (type.equals("login")) {
			user = authDao.login(email, pwd);
			if (user != null) {
				request.setAttribute("userinfos", user.toString());

				sessions.setAttribute("user", user);
				// this.getServletContext().getRequestDispatcher("/index.jsp").forward(request,
				// response);
				if (user.getClass().getName() == "com.doctor.bean.Patient") {
					Patient p = (Patient) user;
					sessions.setAttribute("patientname", p.getName());
					sessions.setAttribute("patientphone", p.getPhone());
					sessions.setAttribute("patientemail", p.getEmail());
					sessions.setAttribute("userid", p.getUserId());
					sessions.setAttribute("patientid", p.getPatientId());
					sessions.setAttribute("patientdatenais", p.getDateNais());
					sessions.setAttribute("patientsexe", p.getSexe());
					sessions.setAttribute("page", "dashboard");
					
					response.sendRedirect("http://localhost:8080/Doctor/Patient?page=dashboard");
				} else {
					Medecin m = (Medecin) user;
					sessions.setAttribute("medecinname", m.getName());
					sessions.setAttribute("medecinphone", m.getPhone());
					sessions.setAttribute("medecinemail", m.getEmail());
					sessions.setAttribute("mid", m.getMedecinId());
					sessions.setAttribute("userid", m.getUserId());
					sessions.setAttribute("medecinspeciality", m.getSpeciality());
					sessions.setAttribute("page", "dashboard");
					
					response.sendRedirect("http://localhost:8080/Doctor/Medecin?page=dashboard");
				}
				System.out.println(user.getClass().getName());
			}  else {				
				request.setAttribute("error", "identifients incorrect");
				this.getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
			}
//			System.out.println(user.toString());
		} else if (type.equals("register")) {
			String phone = request.getParameter("phone");
			String name = request.getParameter("name");

			User userRegister = new User();

			userRegister.setEmail(email);
			userRegister.setPwd(pwd);
			userRegister.setPhone(phone);
			userRegister.setName(name);

			user = authDao.register(userRegister);
			if (user != null) {
				request.setAttribute("userinfos", user.toString());
				sessions.setAttribute("page", "dashboard");
				sessions.setAttribute("user", user);
				response.sendRedirect("http://localhost:8080/Doctor/home?page=complete");
			}
		} else if (type.equals("complete")) {
			String test = request.getParameter("test");
			if (test.equals("yellow")) {
				String dateNais = request.getParameter("date_nais");
				String sexe = request.getParameter("sexe");
				String[] comple = { dateNais, sexe };

				patient = authDao.completPatient(user, comple);
				System.out.println(patient);
				if (patient != null) {
//					sessions.setAttribute("patient", patient);
					sessions.setAttribute("patientname", patient.getName());
					sessions.setAttribute("patientphone", patient.getPhone());
					sessions.setAttribute("patientemail", patient.getEmail());
					sessions.setAttribute("userid", patient.getUserId());
					sessions.setAttribute("patientid", patient.getPatientId());
					sessions.setAttribute("patientdatenais", patient.getDateNais());
					sessions.setAttribute("patientsexe", patient.getSexe());
					response.sendRedirect("http://localhost:8080/Doctor/Patient?page=dasboard");
				} else {
					request.setAttribute("error", "Une erreur c'est produite");
					this.getServletContext().getRequestDispatcher("/completProfile.jsp").forward(request, response);
				}
			} else if (test.equals("red")) {
				String speciality = request.getParameter("speciality");
				medecin = authDao.completMedecin(user, speciality);

				if (medecin != null) {
					sessions.setAttribute("medecinname", medecin.getName());
					sessions.setAttribute("medecinphone", medecin.getPhone());
					sessions.setAttribute("medecinemail", medecin.getEmail());
					sessions.setAttribute("mid", medecin.getMedecinId());
					sessions.setAttribute("userid", medecin.getUserId());
					sessions.setAttribute("medecinspeciality", medecin.getSpeciality());
					response.sendRedirect("http://localhost:8080/Doctor/Medecin?page=dashboard");
				}else {
					request.setAttribute("error", "Une erreur c'est produite");
					this.getServletContext().getRequestDispatcher("/completProfile.jsp").forward(request, response);
				}
			}
		}
	}

}
