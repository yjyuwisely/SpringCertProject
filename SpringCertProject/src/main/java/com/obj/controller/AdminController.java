package com.obj.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.obj.model.MemberVO;
import com.obj.service.AdminService;
import com.obj.model.PatientVO;

@Controller
public class AdminController {
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	@ModelAttribute("memVal")
	public MemberVO memb() {
		return new MemberVO();
	}
	@ModelAttribute("patientVal")
	public PatientVO patient() {
		return new PatientVO();
	}
	
	@Autowired
	AdminService adServ;
	
	@GetMapping("/Admin")
	public String memberList(Model model, MemberVO member, PatientVO patient, HttpSession session) {
		session.setAttribute("email", adServ.memberList(member));
		model.addAttribute("docdig", adServ.digSelect(patient));
		model.addAttribute("member", adServ.memberList(member));
		logger.info("AdminPage member is ={}", member);
		logger.info("AdminPage docdig is ={}", patient);
		return "/Admin";
	}
	
	@PostMapping("/patientWriteUp")
	public String membermodify(Model model, MemberVO member) {
		logger.info("Welcome Diagnosis!");
		model.addAttribute("member", member);
		return "/Diagnosis";
	}
	
	@PostMapping("/patientModify")
	public String memberModify(Model model, MemberVO member, @ModelAttribute("patientVal") PatientVO patientVal) {
		logger.info("Welcome Diagnosis!");
		model.addAttribute("member", member);
		model.addAttribute("modelPatientVal", patientVal);
		return "/DiagnosisMod";
	}
	
	@PostMapping("/digsubmit")
	public String patientDiagnosis(Model model, PatientVO patient) {
		logger.info("submit patient info = {}", patient);
		adServ.diagnosis(patient);
		return "redirect:/Admin";
	}
	
	@PostMapping("/dignosisUpdate")
	public String dignosisUp(Model model, PatientVO patient) {
		logger.info("Update patient info = {}", patient);
		adServ.dignosisUpdate(patient);
		return "redirect:/Admin";
	}
	
	/*Diagnosis.jsp에 환자이름 미리 집어넣기, pcode 이름바꾸고 옵션으로 다시만들기 (완료)
	 * 
	 * 빈값도 나오게 하기
	 * member 테이블에 환자/관리자 여부 칼럼 추가 (완료), certificate테이블에 수술날짜 칼럼추가 (완료)
	 * 
	 * 리스트 김원장 지우기 doctor칼럼 y/n값 줘서 추가했고 (완료) 회원가입에서 자동으로 되는지 확인해야함
	 * 회원가입할때 환자코드?로 자동 insert되게 하기
	 * pcode선택 안되있을때 경고창띄우기, 리스트에서 pcode가있을때 는 버튼 수정하기로 바꾸기 <c:if>?
	 * update페이지에 기존정보 띄워주기
	 * update 하기 id값을 못가져옴 form태그 (완료!)
	 * 
	 */

	

}
