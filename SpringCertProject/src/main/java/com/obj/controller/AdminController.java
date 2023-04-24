package com.obj.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.obj.model.MemberVO;
import com.obj.service.AdminService;

@Controller
public class AdminController {
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	@Autowired
	AdminService adServ;
	
	@GetMapping("/Admin")
	public String memberList(Model model, MemberVO member, HttpSession session) {
		//session.setAttribute("email", adServ.memberList(member));
		model.addAttribute("member", adServ.memberList(member));
		return "/Admin";
	}
	
	@PostMapping("/Diagnosis")
	public String membermodify(Model model, MemberVO member) {
		logger.info("Welcome Diagnosis!");
		model.addAttribute("member", member);
		//다른 메서드에서 쓸때는 MemberVO 넣어줘야함 -> ${member.email} ->메일만 뜨고 이름 안뜸
		//a태그에서 email만 던져줘서 member에는 email만 담겨있음
		return "/Diagnosis";
	}
	//js랑 jsp 컨트롤러 주소 다꼬였음 확인해라
	

}
