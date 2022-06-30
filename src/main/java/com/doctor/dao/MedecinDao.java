package com.doctor.dao;

import java.util.List;

import com.doctor.bean.Appointment;
import com.doctor.bean.AppointmentPatient;
import com.doctor.bean.Patient;

public interface MedecinDao {
	boolean accepOrRejectAppointMent(int idApp, String status);

	boolean finisTache(int idApp);

	List<AppointmentPatient> getMyAgenda(int id);

	List<AppointmentPatient> getMyAppointments(int id);

	List<Patient> getMyPatients(int id);
}
