package com.obj.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.obj.mapper.CertificateMapper;
import com.obj.model.CertificateVO;

//This class will implement the 'CertificateService' interface.
@Service
public class CertificateServiceImpl implements CertificateService {
	@Autowired // automatic dependency injection 필요한 의존 객체의 “타입"에 해당하는 빈을 찾아 주입한다.
	CertificateMapper certMapper;
	
	// helping to check whether the developer what to override the correct method in the parent class or interface. 
	// typically used when we want to change the default behavior of a basic service implementation in a product or in another module.
	@Override 
	public CertificateVO GeneralDown(CertificateVO member){
		return certMapper.GeneralDown(member);
	}
	
	@Override
	public CertificateVO InoutDown(CertificateVO member){
		return certMapper.InoutDown(member);
	}
	
	@Override
	public CertificateVO SergDown(CertificateVO member){
		return certMapper.SergDown(member);
	}
}
