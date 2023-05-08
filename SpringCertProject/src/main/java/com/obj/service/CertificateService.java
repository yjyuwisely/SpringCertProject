package com.obj.service;

import com.obj.model.MemberCertJoinVO;

//This interface will define the methods for accessing the certificate data. 
public interface CertificateService {
	public MemberCertJoinVO GeneralDown(MemberCertJoinVO member);
	public MemberCertJoinVO InoutDown(MemberCertJoinVO member);
	public MemberCertJoinVO SergDown(MemberCertJoinVO member);
	public MemberCertJoinVO Issue(MemberCertJoinVO member);
}