package com.obj.mapper;

import java.util.ArrayList;

import com.obj.model.MemberVO;
import com.obj.model.PatientVO;

public interface AdminMapper {
	public ArrayList<MemberVO> memberList(MemberVO member);
	public void diagnosis(PatientVO patient);
	public ArrayList<PatientVO> digSelect(PatientVO patient);
	public void dignosisUpdate(PatientVO patient);

}
