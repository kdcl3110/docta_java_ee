package com.doctor.dao.implementation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.doctor.bean.Medecin;
import com.doctor.bean.Patient;
import com.doctor.bean.User;
import com.doctor.dao.AuthDao;
import com.doctor.dao.factory.DaoFactory;

public class AuthDaoImpl implements AuthDao {

	private DaoFactory daoFactory;

	public AuthDaoImpl(DaoFactory daoFactory) {
		// super();
		this.daoFactory = daoFactory;
	}

	@Override
	public User register(User user) {
		// TODO Auto-generated method stub
		Connection connexion = null;
		PreparedStatement preparedStatement = null;
		ResultSet req = null;

		try {
			connexion = daoFactory.getConnection();
			preparedStatement = connexion
					.prepareStatement("INSERT INTO user(name, phone, email, pwd) VALUES(?, ?, ?, ?);");
			preparedStatement.setString(1, user.getName());
			preparedStatement.setString(2, user.getPhone());
			preparedStatement.setString(3, user.getEmail());
			preparedStatement.setString(4, user.getPwd());
			if (preparedStatement.executeUpdate() > 0) {

				preparedStatement = connexion.prepareStatement("select * from user ORDER BY id_user DESC LIMIT 1;");
				req = preparedStatement.executeQuery();

				User newUser = new User();

				while (req.next()) {
//						name, phone, email, pwd
					newUser.setUserId(req.getInt("id_user"));
					newUser.setName(req.getString("name"));
					newUser.setEmail(req.getString("email"));
					newUser.setPhone(req.getString("phone"));
					newUser.setPwd(req.getString("pwd"));
				}

				return newUser;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public User login(String email, String password) {
		// TODO Auto-generated method stub
		User user = null;
		Medecin medecin = null;
		Patient patient = null;
		Connection connexion = null;
		PreparedStatement statement = null;
		ResultSet resultat = null;
		String req = "SELECT * FROM user WHERE email='" + email + "' AND pwd='" + password + "'";

		try {
			connexion = daoFactory.getConnection();
			statement = connexion.prepareStatement(req);
			resultat = statement.executeQuery();
			while (resultat.next()) {
				user = new User();
				medecin = this.getMedecein(resultat.getInt("id_user"));
				patient = this.getPatient(resultat.getInt("id_user"));

				if (medecin != null) {
					medecin.setUserId(resultat.getInt("id_user"));
					medecin.setEmail(resultat.getString("email"));
					medecin.setName(resultat.getString("name"));
					medecin.setPhone(resultat.getString("phone"));
					medecin.setPwd(resultat.getString("pwd"));
				} else if (patient != null) {
					patient.setUserId(resultat.getInt("id_user"));
					patient.setEmail(resultat.getString("email"));
					patient.setName(resultat.getString("name"));
					patient.setPhone(resultat.getString("phone"));
					patient.setPwd(resultat.getString("pwd"));
				} else {
					user.setUserId(resultat.getInt("id_user"));
					user.setEmail(resultat.getString("email"));
					user.setName(resultat.getString("name"));
					user.setPhone(resultat.getString("phone"));
					user.setPwd(resultat.getString("pwd"));
				}
			}

			if (medecin != null) {
				return medecin;
			} else if (patient != null) {
				return patient;
			} else {
				return user;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return null;
	}

	public Medecin getMedecein(int id) {
		Medecin medecin = null;
		Connection connexion = null;
		PreparedStatement statement = null;
		ResultSet resultat = null;

		try {
			connexion = daoFactory.getConnection();
			statement = connexion.prepareStatement("SELECT * FROM medecin WHERE id_user=?");
			statement.setInt(1, id);
			resultat = statement.executeQuery();

			while (resultat.next()) {
				medecin = new Medecin();
				medecin.setSpeciality(resultat.getString("speciality"));
			}
			return medecin;
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return null;
	}

	public Patient getPatient(int id) {
		Patient patient = null;
		Connection connexion = null;
		PreparedStatement statement = null;
		ResultSet resultat = null;

		try {
			connexion = daoFactory.getConnection();
			statement = connexion.prepareStatement("SELECT * FROM patient WHERE id_user=?");
			statement.setInt(1, id);
			resultat = statement.executeQuery();

			while (resultat.next()) {
				patient = new Patient();
				patient.setSexe(resultat.getString("date_nais"));
				patient.setDateNais(resultat.getString("date_nais"));
			}
			return patient;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public Patient completPatient(User user, String[] complet) {
		Connection connexion = null;
		PreparedStatement preparedStatement = null;
		ResultSet req = null;

		try {
			connexion = daoFactory.getConnection();
			preparedStatement = connexion
					.prepareStatement("INSERT INTO patient(id_user, date_nais, sexe) VALUES(?, ?, ?);");
			preparedStatement.setInt(1, user.getUserId());
			preparedStatement.setString(2, complet[0]);
			preparedStatement.setString(3, complet[1]);
			
			if (preparedStatement.executeUpdate() > 0) {
				preparedStatement = connexion.prepareStatement("select * from patient ORDER BY id_user DESC LIMIT 1;");
				req = preparedStatement.executeQuery();
				Patient patient = new Patient();
				patient.setName(user.getName());
				patient.setEmail(user.getEmail());
				patient.setPhone(user.getPhone());
				patient.setPwd(user.getPwd());
				patient.setUserId(user.getUserId());

				while (req.next()) {
//						name, phone, email, pwd
					patient.setPatientId(req.getInt("patient_id"));
					patient.setDateNais(req.getString("date_nais"));
					patient.setSexe(req.getString("sexe"));
				}

				return patient;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public Medecin completMedecin(User user, String speciality) {
		Connection connexion = null;
		PreparedStatement preparedStatement = null;
		ResultSet req = null;

		try {
			connexion = daoFactory.getConnection();
			preparedStatement = connexion
					.prepareStatement("INSERT INTO medecin(id_user, speciality) VALUES(?, ?);");
			preparedStatement.setInt(1, user.getUserId());
			preparedStatement.setString(2, speciality);
			
			if (preparedStatement.executeUpdate() > 0) {
				preparedStatement = connexion.prepareStatement("select * from patient ORDER BY id_user DESC LIMIT 1;");
				req = preparedStatement.executeQuery();
				
				Medecin medecin = new Medecin();
				medecin.setName(user.getName());
				medecin.setEmail(user.getEmail());
				medecin.setPhone(user.getPhone());
				medecin.setPwd(user.getPwd());
				medecin.setUserId(user.getUserId());

				while (req.next()) {
					medecin.setPatientId(req.getInt("id_medecin"));
					medecin.setSpeciality(req.getString("speciality"));
				}

				return medecin;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

}
