package com.doctor.bean;

public class Patient extends User{
	private int patientId;
	private String dateNais;
	private String sexe;
	public Patient() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Patient(int userId, String name, String phone, String email, String pwd, String dateNais, String sexe) {
		super(userId, name, phone, email, pwd);
		this.dateNais = dateNais;
		this.sexe = sexe;
		// TODO Auto-generated constructor stub
	}
	
	public String getDateNais() {
		return dateNais;
	}
	public void setDateNais(String dateNais) {
		this.dateNais = dateNais;
	}
	public String getSexe() {
		return sexe;
	}
	public void setSexe(String sexe) {
		this.sexe = sexe;
	}
	public int getPatientId() {
		return patientId;
	}
	public void setPatientId(int patientId) {
		this.patientId = patientId;
	}
	
	@Override
	public String toString() {
		return "Patient [dateNais=" + dateNais + ", sexe=" + sexe + "]";
	}
	
}
