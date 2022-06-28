package com.doctor.dao;

import java.util.List;

import com.doctor.bean.Appointment;
import com.doctor.bean.AppointmentMedecin;
import com.doctor.bean.Medecin;

public interface PatientDao {
	List<Medecin> getMedecin();

	boolean makeAppointment(Appointment appointment);

	List<AppointmentMedecin> getMyAppointments(int id);

	List<Medecin> getMyDoc(int id);
}
