package com.doctor.bean;

public class AppointmentPatient {
	private Appointment appointment;
	private Patient patient;

	public AppointmentPatient() {
	}

	public AppointmentPatient(Appointment appointment, Patient patient) {
		super();
		this.appointment = appointment;
		this.patient = patient;
	}

	public Appointment getAppointment() {
		return appointment;
	}

	public void setAppointment(Appointment appointment) {
		this.appointment = appointment;
	}

	public Patient getPatient() {
		return patient;
	}

	public void setPatient(Patient patient) {
		this.patient = patient;
	}
	
	
}
