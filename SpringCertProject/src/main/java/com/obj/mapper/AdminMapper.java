package com.obj.mapper;

import java.util.ArrayList;
import java.util.List;

import com.obj.model.MemberCertJoinVO;
import com.obj.model.MemberVO;
import com.obj.model.PatientVO;

public interface AdminMapper {
	public ArrayList<MemberVO> memberList(MemberVO member);
	public void diagnosis(PatientVO patient);
	public ArrayList<PatientVO> digSelect(PatientVO patient);
	public void dignosisUpdate(PatientVO patient);
	public List<MemberCertJoinVO> memCertJoin(MemberCertJoinVO memcertVal);
	public MemberVO digModifyJoinMap(MemberVO member);
}
