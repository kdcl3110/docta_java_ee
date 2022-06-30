package com.doctor.dao.implementation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.doctor.bean.Appointment;
import com.doctor.bean.AppointmentPatient;
import com.doctor.bean.Patient;
import com.doctor.dao.MedecinDao;
import com.doctor.dao.factory.DaoFactory;

public class MedecinDaoImpl implements MedecinDao {

	private DaoFactory daoFactory;

	public MedecinDaoImpl(DaoFactory daoFactory) {
		// super();
		this.daoFactory = daoFactory;
	}

	@Override
	public boolean finisTache(int idApp) {
		Connection connexion = null;
		PreparedStatement statement = null;
		String req = "UPDATE appointment SET is_finis='yes' WHERE id_appointment="+idApp;

		try {
			connexion = daoFactory.getConnection();
			statement = connexion.prepareStatement(req);
			statement.executeUpdate();

			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean accepOrRejectAppointMent(int idApp, String status) {
		Connection connexion = null;
		PreparedStatement statement = null;
		String req = "UPDATE appointment SET status='" + status + "' WHERE id_appointment="+idApp;

		try {
			connexion = daoFactory.getConnection();
			statement = connexion.prepareStatement(req);
			statement.executeUpdate();

			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public List<AppointmentPatient> getMyAppointments(int id) {
		Connection connexion = null;
		PreparedStatement statement = null;
		ResultSet resultat = null;

		List<AppointmentPatient> appointments = new ArrayList<AppointmentPatient>();
		String req = "SELECT appointment.*, patient.*, user.* FROM appointment, patient, user WHERE appointment.id_medecin="
				+ id
				+ " AND appointment.concern_id=patient.id_user AND patient.id_user=user.id_user AND appointment.status!='accept' AND appointment.status!='reject'";

		try {
			connexion = daoFactory.getConnection();
			statement = connexion.prepareStatement(req);
			resultat = statement.executeQuery();

			while (resultat.next()) {
				Appointment appointment = new Appointment();
				Patient patient = new Patient();
				AppointmentPatient appointmentMedecin = new AppointmentPatient();

				appointment.setDate(resultat.getString("date_rdv"));
				appointment.setHoure(resultat.getString("houre"));
				appointment.setType(resultat.getString("type"));
				appointment.setConcernId(resultat.getInt("concern_id"));
				appointment.setIdMedecin(resultat.getInt("id_medecin"));
				appointment.setIdAppointment(resultat.getInt("id_appointment"));
				appointment.setStatus(resultat.getString("status"));
				appointment.setIsFinis(resultat.getString("is_finis"));

				patient.setEmail(resultat.getString("email"));
				patient.setName(resultat.getString("name"));
				patient.setPhone(resultat.getString("phone"));
				patient.setUserId(resultat.getInt("id_user"));
				patient.setPatientId(resultat.getInt("id_patient"));
//				medecin.setSpeciality(resultat.getString("speciality"));

				appointmentMedecin.setAppointment(appointment);
				appointmentMedecin.setPatient(patient);

				appointments.add(appointmentMedecin);

			}
			return appointments;
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return null;
	}

	@Override
	public List<Patient> getMyPatients(int id) {
		Connection connexion = null;
		PreparedStatement statement = null;
		ResultSet resultat = null;

		List<Patient> patients = new ArrayList<Patient>();
		String req = "SELECT DISTINCT(user.id_user), user.email, user.name, user.phone, patient.id_patient FROM appointment, patient, user WHERE appointment.id_medecin="
				+ id + " AND appointment.concern_id=patient.id_user AND patient.id_user=user.id_user";

		try {
			connexion = daoFactory.getConnection();
			statement = connexion.prepareStatement(req);
			resultat = statement.executeQuery();

			while (resultat.next()) {
				Patient patient = new Patient();

				patient.setEmail(resultat.getString("email"));
				patient.setName(resultat.getString("name"));
				patient.setPhone(resultat.getString("phone"));
				patient.setUserId(resultat.getInt("id_user"));
				patient.setPatientId(resultat.getInt("id_patient"));
//				medecin.setMedecinId(resultat.getInt("id_medecin"));
//				medecin.setSpeciality(resultat.getString("speciality"));

				patients.add(patient);
			}
			return patients;
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return null;
	}

	@Override
	public List<AppointmentPatient> getMyAgenda(int id) {
		Connection connexion = null;
		PreparedStatement statement = null;
		ResultSet resultat = null;

		List<AppointmentPatient> appointments = new ArrayList<AppointmentPatient>();
		String req = "SELECT appointment.*, patient.*, user.* FROM appointment, patient, user WHERE appointment.id_medecin="
				+ id
				+ " AND appointment.concern_id=patient.id_user AND patient.id_user=user.id_user AND appointment.status='accept'";

		try {
			connexion = daoFactory.getConnection();
			statement = connexion.prepareStatement(req);
			resultat = statement.executeQuery();

			while (resultat.next()) {
				Appointment appointment = new Appointment();
				Patient patient = new Patient();
				AppointmentPatient appointmentMedecin = new AppointmentPatient();

				appointment.setDate(resultat.getString("date_rdv"));
				appointment.setHoure(resultat.getString("houre"));
				appointment.setType(resultat.getString("type"));
				appointment.setConcernId(resultat.getInt("concern_id"));
				appointment.setIdMedecin(resultat.getInt("id_medecin"));
				appointment.setIdAppointment(resultat.getInt("id_appointment"));
				appointment.setStatus(resultat.getString("status"));
				appointment.setIsFinis(resultat.getString("is_finis"));

				patient.setEmail(resultat.getString("email"));
				patient.setName(resultat.getString("name"));
				patient.setPhone(resultat.getString("phone"));
				patient.setUserId(resultat.getInt("id_user"));
				patient.setPatientId(resultat.getInt("id_patient"));
//				medecin.setSpeciality(resultat.getString("speciality"));

				appointmentMedecin.setAppointment(appointment);
				appointmentMedecin.setPatient(patient);

				appointments.add(appointmentMedecin);

			}
			return appointments;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

}
