package com.obj.service;

import com.obj.model.CertificateVO;

//This interface will define the methods for accessing the certificate data. 
public interface CertificateService {
	public CertificateVO GeneralDown(CertificateVO member);
	public CertificateVO InoutDown(CertificateVO member);
	public CertificateVO SergDown(CertificateVO member);
}