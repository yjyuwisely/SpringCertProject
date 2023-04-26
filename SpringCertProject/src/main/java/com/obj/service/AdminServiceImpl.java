package com.obj.service;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.obj.mapper.AdminMapper;
import com.obj.model.MemberVO;
import com.obj.model.PatientVO;

@Service
public class AdminServiceImpl implements AdminService {
	private static final Logger logger = LoggerFactory.getLogger(AdminServiceImpl.class);
	
	@Autowired
	AdminMapper adMapper;

	@Override
	public ArrayList<MemberVO> memberList(MemberVO member) {
		return adMapper.memberList(member);
	}

	@Override
	public void diagnosis(PatientVO patient) {
		adMapper.diagnosis(patient);
	}

	@Override
	public ArrayList<PatientVO> digSelect(PatientVO patient) {
		return adMapper.digSelect(patient);
	}
	@Override
	public void dignosisUpdate(PatientVO patient) {
		logger.info("AdminServiceImpl patient = {}", patient);
		adMapper.dignosisUpdate(patient);
		
	}

}
