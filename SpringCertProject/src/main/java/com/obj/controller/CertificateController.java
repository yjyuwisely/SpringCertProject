package com.obj.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.obj.model.MemberCertJoinVO;
import com.obj.service.CertificateService;

@Controller
public class CertificateController {
	// used to log messages for a specific system or application component.
	private static final Logger logger = LoggerFactory.getLogger(CertificateController.class);
	
	@Autowired
	CertificateService certServ;
	
	//진료확인서
	@GetMapping("/GeneralDown")
	public String GeneralDown(Model model, MemberCertJoinVO member, HttpSession session){
		// model.addAttribute(String name, Object value);
		//: value 객체를 name 이름으로 추가함. 뷰 코드에서는 name으로 지정한 이름을 통해서 value를 사용함.
		model.addAttribute("cert", certServ.GeneralDown(member));
		logger.info("This is for General certificate download. = {}", member);
		return "/GeneralDown";
	}
	
	//입,퇴원확인서
	@GetMapping("/InoutDown")
	public String InoutDown(Model model, MemberCertJoinVO member, HttpSession session){
		model.addAttribute("cert", certServ.InoutDown(member));
		logger.info("This is for Hospitalization certificate download. = {}", member);
		return "/InoutDown";
	}
	
	//수술확인서
	@GetMapping("/SergDown")
	public String SergDown(Model model, MemberCertJoinVO member, HttpSession session){
		model.addAttribute("cert", certServ.SergDown(member));
		logger.info("This is for Surgical certificate download. {}", member);
		return "/SergDown";
	}
}
