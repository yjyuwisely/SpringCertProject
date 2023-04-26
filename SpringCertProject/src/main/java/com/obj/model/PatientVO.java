package com.obj.model;

import java.sql.Date;

public class PatientVO {
	
	private String id;
	private String Diagnostic;
	private String patientcode;
	private Date admission_date;
	private Date discharge_date;
	private String disease;
	private String operation;
	private Date surg_date;
	

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getDiagnostic() {
		return Diagnostic;
	}
	public void setDiagnostic(String diagnostic) {
		Diagnostic = diagnostic;
	}
	public String getPatientcode() {
		return patientcode;
	}
	public void setPatientcode(String patientcode) {
		this.patientcode = patientcode;
	}
	public Date getAdmission_date() {
		return admission_date;
	}
	public void setAdmission_date(Date admission_date) {
		this.admission_date = admission_date;
	}
	public Date getDischarge_date() {
		return discharge_date;
	}
	public void setDischarge_date(Date discharge_date) {
		this.discharge_date = discharge_date;
	}
	public String getDisease() {
		return disease;
	}
	public void setDisease(String disease) {
		this.disease = disease;
	}
	public String getOperation() {
		return operation;
	}
	public void setOperation(String operation) {
		this.operation = operation;
	}
	public Date getSurg_date() {
		return surg_date;
	}
	public void setSurg_date(Date surg_date) {
		this.surg_date = surg_date;
	}
	@Override
	public String toString() {
		return "PatientVO [id=" + id + ", Diagnostic=" + Diagnostic + ", patientcode=" + patientcode
				+ ", admission_date=" + admission_date + ", discharge_date=" + discharge_date + ", disease=" + disease
				+ ", operation=" + operation + ", surg_date=" + surg_date + "]";
	}
	

	
	
	
	
	
	
	
	
}
