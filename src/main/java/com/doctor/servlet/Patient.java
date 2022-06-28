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
import com.doctor.bean.SendSms;
import com.doctor.dao.PatientDao;
import com.doctor.dao.factory.DaoFactory;

/**
 * Servlet implementation class Patient
 */
public class Patient extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private PatientDao patientDao;
	private com.doctor.bean.Patient patient = new com.doctor.bean.Patient();

	public void init() throws ServletException {
		DaoFactory daoFactory = DaoFactory.getInstance();
		this.patientDao = daoFactory.getPatientDao();
	}

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

		if (session != null) {
			patient.setName((String) session.getAttribute("patientname"));
			patient.setPhone((String) session.getAttribute("patientphone"));
			patient.setEmail((String) session.getAttribute("patientemail"));
			patient.setUserId((int) session.getAttribute("userid"));
			patient.setPatientId((int) session.getAttribute("patientid"));
			patient.setDateNais((String) session.getAttribute("patientdatenais"));
			patient.setSexe((String) session.getAttribute("patientsexe"));
		}

		request.setAttribute("patient", patient);

		if (page != null) {
			if (page.equals("follow")) {
				session.setAttribute("page", "appointment");

				List<com.doctor.bean.Medecin> medecins = patientDao.getMyDoc(patient.getUserId());
				request.setAttribute("medecins", medecins);
				
				session.setAttribute("page", "follow");
				this.getServletContext().getRequestDispatcher("/pages/patient/follow.jsp").forward(request, response);
			} else if (page.equals("notebook")) {
				session.setAttribute("page", "notebook");
				
				List<AppointmentMedecin> appointments = patientDao.getMyAppointments(patient.getUserId());
				request.setAttribute("appointments", appointments);
				
				this.getServletContext().getRequestDispatcher("/pages/patient/notebook.jsp").forward(request, response);
			} else if (page.equals("history")) {
				session.setAttribute("page", "history");
				this.getServletContext().getRequestDispatcher("/pages/patient/history.jsp").forward(request, response);
			} else if (page.equals("appointment")) {
				session.setAttribute("page", "appointment");

				List<com.doctor.bean.Medecin> medecins = patientDao.getMedecin();
				request.setAttribute("medecins", medecins);

				this.getServletContext().getRequestDispatcher("/pages/patient/appointment.jsp").forward(request,
						response);
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
		HttpSession session = request.getSession();

		int idMed = Integer.parseInt(request.getParameter("medecin"));
		Appointment appointment = new Appointment();
		appointment.setHoure(request.getParameter("houre"));
		appointment.setDate(request.getParameter("date"));
		appointment.setIdMedecin(idMed);
		appointment.setConcernId(patient.getUserId());
		appointment.setType(request.getParameter("type"));

		boolean test = patientDao.makeAppointment(appointment);
		if (test) {
			String msg= patient.getName() + " vous a envoyé une demande de rendez-vous pour le " + appointment.getDate() + " à " + appointment.getHoure();
			SendSms.sendSms("+237695442264", msg);
			request.setAttribute("success", "Votre demande a été envoyée");
		} else {
			request.setAttribute("error", "Une erreur c'est produite");
		}
		System.out.println(appointment);
		session.setAttribute("page", "dashboard");
		this.getServletContext().getRequestDispatcher("/pages/patient/index.jsp").forward(request, response);
	}

}
