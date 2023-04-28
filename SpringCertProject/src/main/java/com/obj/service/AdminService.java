package com.obj.service;

import java.util.ArrayList;
import java.util.List;

import com.obj.model.CertificateVO;
import com.obj.model.MemberVO;
import com.obj.model.PatientVO;

public interface AdminService {
	public ArrayList<MemberVO> memberList(MemberVO member);
	public void diagnosis(PatientVO patient);
	public ArrayList<PatientVO> digSelect(PatientVO patient);
	public void dignosisUpdate(PatientVO patient);
	public List<CertificateVO> memCertJoin(CertificateVO certVal);
	public MemberVO digModifyJoinMap(MemberVO member);

}
