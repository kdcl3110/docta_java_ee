package com.doctor.dao.implementation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.doctor.bean.Appointment;
import com.doctor.bean.AppointmentMedecin;
import com.doctor.bean.Medecin;
import com.doctor.bean.User;
import com.doctor.dao.PatientDao;
import com.doctor.dao.factory.DaoFactory;

public class PatientDaoImpl implements PatientDao {

	private DaoFactory daoFactory;

	public PatientDaoImpl(DaoFactory daoFactory) {
		// super();
		this.daoFactory = daoFactory;
	}

	@Override
	public List<Medecin> getMedecin() {
		Connection connexion = null;
		PreparedStatement statement = null;
		ResultSet resultat = null;

		List<Medecin> medecins = new ArrayList<Medecin>();
		String req = "SELECT * FROM medecin";

		try {
			connexion = daoFactory.getConnection();
			statement = connexion.prepareStatement(req);
			resultat = statement.executeQuery();

			while (resultat.next()) {
				User user = getUser(resultat.getInt("id_user"));
				if (user != null) {
					Medecin medecin = new Medecin();
					medecin.setEmail(user.getEmail());
					medecin.setName(user.getName());
					medecin.setPhone(user.getPhone());
					medecin.setUserId(user.getUserId());
					medecin.setMedecinId(resultat.getInt("id_medecin"));
					medecin.setSpeciality(resultat.getString("speciality"));

					medecins.add(medecin);
				}
			}
			return medecins;
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return null;
	}

	@Override
	public boolean makeAppointment(Appointment appointment) {
		Connection connexion = null;
		PreparedStatement preparedStatement = null;
		try {
			connexion = daoFactory.getConnection();
			preparedStatement = connexion.prepareStatement(
					"INSERT INTO appointment(id_medecin, concern_id, type, date_rdv, houre, status, is_finis) VALUES(?, ?, ?, ?, ?, ?, ?);");
			preparedStatement.setInt(1, appointment.getIdMedecin());
			preparedStatement.setInt(2, appointment.getConcernId());
			preparedStatement.setString(3, appointment.getType());
			preparedStatement.setString(4, appointment.getDate());
			preparedStatement.setString(5, appointment.getHoure());
			preparedStatement.setString(6, "new");
			preparedStatement.setString(7, "no");
			preparedStatement.executeUpdate();

			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	public User getUser(int id) {
		User user = null;
		Connection connexion = null;
		PreparedStatement statement = null;
		ResultSet resultat = null;

		try {
			connexion = daoFactory.getConnection();
			statement = connexion.prepareStatement("SELECT * from user WHERE id_user=?");
			statement.setInt(1, id);
			resultat = statement.executeQuery();

			while (resultat.next()) {
				user = new User();
				user.setEmail(resultat.getString("email"));
				user.setPhone(resultat.getString("phone"));
				user.setUserId(resultat.getInt("id_user"));
				user.setName(resultat.getString("name"));
			}
			return user;
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return null;
	}

	@Override
	public List<AppointmentMedecin> getMyAppointments(int id) {
		Connection connexion = null;
		PreparedStatement statement = null;
		ResultSet resultat = null;

		List<AppointmentMedecin> appointments = new ArrayList<AppointmentMedecin>();
		String req = "SELECT appointment.*, medecin.*, user.* FROM appointment, medecin, user WHERE concern_id=" + id
				+ " AND appointment.id_medecin=medecin.id_medecin AND medecin.id_user=user.id_user";

		try {
			connexion = daoFactory.getConnection();
			statement = connexion.prepareStatement(req);
			resultat = statement.executeQuery();

			while (resultat.next()) {
				Appointment appointment = new Appointment();
				Medecin medecin = new Medecin();
				AppointmentMedecin appointmentMedecin = new AppointmentMedecin();

				appointment.setDate(resultat.getString("date_rdv"));
				appointment.setHoure(resultat.getString("houre"));
				appointment.setType(resultat.getString("type"));
				appointment.setConcernId(resultat.getInt("concern_id"));
				appointment.setIdMedecin(resultat.getInt("id_medecin"));
				appointment.setIdAppointment(resultat.getInt("id_appointment"));
				appointment.setStatus(resultat.getString("status"));
				appointment.setIsFinis(resultat.getString("is_finis"));

				medecin.setEmail(resultat.getString("email"));
				medecin.setName(resultat.getString("name"));
				medecin.setPhone(resultat.getString("phone"));
				medecin.setUserId(resultat.getInt("id_user"));
				medecin.setMedecinId(resultat.getInt("id_medecin"));
				medecin.setSpeciality(resultat.getString("speciality"));

				appointmentMedecin.setAppointment(appointment);
				appointmentMedecin.setMedecin(medecin);

				appointments.add(appointmentMedecin);

			}
			return appointments;
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return null;
	}

	@Override
	public List<Medecin> getMyDoc(int id) {

		Connection connexion = null;
		PreparedStatement statement = null;
		ResultSet resultat = null;

		List<Medecin> medecins = new ArrayList<Medecin>();
		String req = "SELECT DISTINCT(user.id_user), user.email, user.name, user.phone FROM appointment, medecin, user WHERE concern_id=" + id
				+ " AND appointment.id_medecin=medecin.id_medecin AND medecin.id_user=user.id_user";

		try {
			connexion = daoFactory.getConnection();
			statement = connexion.prepareStatement(req);
			resultat = statement.executeQuery();
			
			while (resultat.next()) {
				Medecin medecin = new Medecin();
				
				medecin.setEmail(resultat.getString("email"));
				medecin.setName(resultat.getString("name"));
				medecin.setPhone(resultat.getString("phone"));
				medecin.setUserId(resultat.getInt("id_user"));
//				medecin.setMedecinId(resultat.getInt("id_medecin"));
//				medecin.setSpeciality(resultat.getString("speciality"));
				
				medecins.add(medecin);
			}
			return medecins;
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return null;
	}

}
