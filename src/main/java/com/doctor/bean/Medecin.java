package com.doctor.bean;

public class Medecin extends User {
	private int medecinId;
	private String speciality;
	
	

	public int getMedecinId() {
		return medecinId;
	}

	public void setMedecinId(int medecinId) {
		this.medecinId = medecinId;
	}

	public String getSpeciality() {
		return speciality;
	}

	public void setSpeciality(String speciality) {
		this.speciality = speciality;
	}

	public Medecin() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Medecin(int userId, String name, String phone, String email, String pwd, String speciality) {
		super(userId, name, phone, email, pwd);
		
		this.speciality = speciality;
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Medecin [speciality=" + speciality + "]";
	}
}
