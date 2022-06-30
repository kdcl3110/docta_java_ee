package com.doctor.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

import com.doctor.bean.Appointment;
import com.doctor.bean.AppointmentMedecin;
import com.doctor.bean.AppointmentPatient;
import com.doctor.bean.SendSms;
import com.doctor.dao.MedecinDao;
//import com.doctor.dao.MedecinDao;
import com.doctor.dao.factory.DaoFactory;

/**
 * Servlet implementation class Medecin
 */
public class Medecin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	// private MedecinDao medecinDao;
	private com.doctor.bean.Medecin medecin = new com.doctor.bean.Medecin();
	private MedecinDao medecinDao;

	public void init() throws ServletException {
		DaoFactory daoFactory = DaoFactory.getInstance();
		this.medecinDao = daoFactory.getMedecinDao();
	}

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Medecin() {
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
		// response.getWriter().append("Served at: ").append(request.getContextPath());

		String page = request.getParameter("page");
		HttpSession session = request.getSession();

		if (session != null) {
			medecin.setName((String) session.getAttribute("medecinname"));
			medecin.setPhone((String) session.getAttribute("medecinphone"));
			medecin.setEmail((String) session.getAttribute("medecinemail"));
			medecin.setUserId((int) session.getAttribute("userid"));
			medecin.setMedecinId((int) session.getAttribute("mid"));
			medecin.setSpeciality((String) session.getAttribute("medecinspeciality"));
		}

		request.setAttribute("medecin", medecin);

		if (page != null) {
			if (page.equals("patient")) {
				List<com.doctor.bean.Patient> patients = medecinDao.getMyPatients(medecin.getMedecinId());
				request.setAttribute("patients", patients);

				session.setAttribute("page", "patient");
				this.getServletContext().getRequestDispatcher("/pages/medecin/patient.jsp").forward(request, response);
			} else if (page.equals("agenda")) {
				List<AppointmentPatient> appointments = medecinDao.getMyAgenda(medecin.getMedecinId());
				request.setAttribute("appointments", appointments);

				session.setAttribute("page", "agenda");
				this.getServletContext().getRequestDispatcher("/pages/medecin/agenda.jsp").forward(request, response);
			} else if (page.equals("RendezVous")) {
				List<AppointmentPatient> appointments = medecinDao.getMyAppointments(medecin.getMedecinId());
				request.setAttribute("appointments", appointments);

				session.setAttribute("page", "RendezVous");
				this.getServletContext().getRequestDispatcher("/pages/medecin/RendezVous.jsp").forward(request,
						response);
			} else if (page.equals("profil")) {
				session.setAttribute("page", "profil");
				this.getServletContext().getRequestDispatcher("/pages/medecin/profil.jsp").forward(request, response);
			} else {
				session.setAttribute("page", "dashboard");
				this.getServletContext().getRequestDispatcher("/pages/medecin/index.jsp").forward(request, response);
			}
		} else {
			session.setAttribute("page", "dashboard");
			this.getServletContext().getRequestDispatcher("/pages/medecin/index.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String action = request.getParameter("action");

		if (action.equals("updateStatus")) {
			String status = request.getParameter("status");
			int idApp = Integer.parseInt(request.getParameter("idApp"));
			boolean test = this.medecinDao.accepOrRejectAppointMent(idApp, status);

			session.setAttribute("page", "RendezVous");
			if (test) {
				request.setAttribute("success", "Opération éffectuée");
			} else {
				request.setAttribute("error", "Une erreur c'est produite");
			}
			
			if(status.equals("accept")) {				
				String msg= "Dr. " + medecin.getName() + " a accepté votre demande rendez-vous";
				SendSms.sendSms("+237695442264", msg);
			} else {
				String msg= "Dr. " + medecin.getName() + " a rejetté votre demande de rendez-vous ";
				SendSms.sendSms("+237695442264", msg);
			}

			List<AppointmentPatient> appointments = medecinDao.getMyAppointments(medecin.getMedecinId());
			request.setAttribute("appointments", appointments);

			session.setAttribute("page", "RendezVous");

			this.getServletContext().getRequestDispatcher("/pages/medecin/RendezVous.jsp").forward(request, response);
		} else if(action.equals("finishTache")) {
			int idApp = Integer.parseInt(request.getParameter("idApp"));
			boolean test = this.medecinDao.finisTache(idApp);

			if (test) {
				request.setAttribute("success", "Vous vennez de terminer une tâche");
			} else {
				request.setAttribute("error", "Une erreur c'est produite");
			}
			List<AppointmentPatient> appointments = medecinDao.getMyAgenda(medecin.getMedecinId());
			request.setAttribute("appointments", appointments);

			session.setAttribute("page", "agenda");
			
			this.getServletContext().getRequestDispatcher("/pages/medecin/agenda.jsp").forward(request, response);
		} else {			
			this.getServletContext().getRequestDispatcher("/pages/medecin/index.jsp").forward(request, response);
		}
	}
}
