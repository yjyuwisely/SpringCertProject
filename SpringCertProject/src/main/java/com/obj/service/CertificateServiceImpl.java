package com.obj.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.obj.mapper.CertificateMapper;
import com.obj.model.MemberCertJoinVO;

//This class will implement the 'CertificateService' interface.
@Service
public class CertificateServiceImpl implements CertificateService {
	@Autowired // automatic dependency injection 필요한 의존 객체의 “타입"에 해당하는 빈을 찾아 주입한다.
	CertificateMapper certMapper;
	
	// helping to check whether the developer what to override the correct method in the parent class or interface. 
	// typically used when we want to change the default behavior of a basic service implementation in a product or in another module.
	@Override 
	public MemberCertJoinVO GeneralDown(MemberCertJoinVO member){
		return certMapper.GeneralDown(member);
	}
	
	@Override
	public MemberCertJoinVO InoutDown(MemberCertJoinVO member){
		return certMapper.InoutDown(member);
	}
	
	@Override
	public MemberCertJoinVO SergDown(MemberCertJoinVO member){
		return certMapper.SergDown(member);
	}
}
