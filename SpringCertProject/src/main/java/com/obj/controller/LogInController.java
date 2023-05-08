package com.obj.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.obj.model.MemberVO;
import com.obj.service.LogInService;

@Controller
public class LogInController {
	private static final Logger logger = LoggerFactory.getLogger(LogInController.class);
	
	@Autowired
	LogInService logserv;
	
	//아이디없는 유저 거부, super유저 admin페이지로 이동, 일반유저 일반페이지로 이동
	//프론트에서 각 주소 매핑시켜야함
	@PostMapping("memberIn")
	public String memberLogIn(HttpSession session, MemberVO member, Model model) {
		System.out.println(member);
		String email = member.getEmail();
		String pass = member.getPassword();
		MemberVO loggedInMember = logserv.memberLogIn(member);
		String result=null;
		
		if (loggedInMember==null) {	// 회원이 아닐때
			logger.info("LogIn failed member is = {}", member);
			model.addAttribute("errorMsg", "errorMsg");
			result = "redirect:/LogIn";
		}else if(email.equals("admin@admin.com") && pass.equals("1234")){	// 관리자일때
			String name = loggedInMember.getName();
			logger.info("super user LogIn Success member is = {}", member);
			session.setAttribute("adminUser", loggedInMember);
			session.setAttribute("name", name);
			logger.info("adminUser user LogIn Success loggedInMember is = {}", loggedInMember);
			model.addAttribute("admin", loggedInMember);
			result = "redirect:/";
		}else if(loggedInMember!=null){		// 일반회원일때
			String name = loggedInMember.getName();
			logger.info("common user LogIn Success member is = {}", member);
			logger.info("common user LogIn Success loggedInMember is = {}", loggedInMember);
			logger.info("common user LogIn Success name is = {}", name);
			session.setAttribute("common", loggedInMember);
			session.setAttribute("commonName", name);
			//model.addAttribute("generalAcc", loggedInMember);
			result = "redirect:/";
		}
		return result;
	}
	
	//로그아웃 컨트롤러
	//로그아웃버튼 만들고 주소매핑
	@GetMapping("logOut")
	public String logout(HttpServletRequest request) {
		logger.info("user Log Out");
		HttpSession session = request.getSession();
		session.invalidate();
		//session.removeAttribute("common"); 세션 선택삭제
		return "/home";
	}
	
	
	
	

}
