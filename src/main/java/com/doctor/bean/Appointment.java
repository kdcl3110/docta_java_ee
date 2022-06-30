package com.doctor.bean;

public class Appointment {
	private int idAppointment;
	private String type;
	private int idMedecin;
	private String date;
	private String houre;
	private int concernId;
	private String status;
	private String isFinis;

	public Appointment() {
	}

	public Appointment(int idAppointment, String type, int idMedecin, String date, String houre, int concernId,
			String status, String isFinis) {
		super();
		this.idAppointment = idAppointment;
		this.type = type;
		this.idMedecin = idMedecin;
		this.date = date;
		this.houre = houre;
		this.concernId = concernId;
		this.status = status ;
		this.isFinis = isFinis;
	}

	public int getConcernId() {
		return concernId;
	}

	public void setConcernId(int concernId) {
		this.concernId = concernId;
	}

	public int getIdAppointment() {
		return idAppointment;
	}

	public void setIdAppointment(int idAppointment) {
		this.idAppointment = idAppointment;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getIdMedecin() {
		return idMedecin;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getIsFinis() {
		return isFinis;
	}

	public void setIsFinis(String isFinis) {
		this.isFinis = isFinis;
	}

	public void setIdMedecin(int idMedecin) {
		this.idMedecin = idMedecin;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getHoure() {
		return houre;
	}

	public void setHoure(String houre) {
		this.houre = houre;
	}

	@Override
	public String toString() {
		return "Appointment [idAppointment=" + idAppointment + ", type=" + type + ", idMedecin=" + idMedecin + ", date="
				+ date + ", houre=" + houre + "]";
	}

}
