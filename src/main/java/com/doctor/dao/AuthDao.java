package com.doctor.dao;

import com.doctor.bean.Medecin;
import com.doctor.bean.Patient;
import com.doctor.bean.User;

public interface AuthDao {
	User register(User user);
	User login(String email, String password);
	Patient completPatient(User user, String complet[]);
	Medecin completMedecin (User user, String speciality);
}
