package com.obj.model;

public class CertificateVO {
    private String id;
    private String name;
    private String residentid;
    private String disease;
    private String admission_date;
    private String discharge_date;
    private String operation;
    private String surg_date;
    
    // Getters and Setters
    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getResidentid() {
        return residentid;
    }
    public void setResidentid(String residentid) {
        this.residentid = residentid;
    }
    public String getDisease() {
        return disease;
    }
    public void setDisease(String disease) {
        this.disease = disease;
    }
    public String getadmission_date() {
        return admission_date;
    }
    public void setAdmissionDate(String admission_date) {
        this.admission_date = admission_date;
    }
    public String getdischarge_date() {
        return discharge_date;
    }
    public void setDischargeDate(String discharge_date) {
        this.discharge_date = discharge_date;
    }
    public String getOperation() {
        return operation;
    }
    public void setOperation(String operation) {
        this.operation = operation;
    }
	public String getSurg_date() {
		return surg_date;
	}
	public void setSurg_date(String surg_date) {
		this.surg_date = surg_date;
	}
}