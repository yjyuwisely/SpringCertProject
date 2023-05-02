package com.obj.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import com.obj.model.MemberCertJoinVO;
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
	
	//VO를 파라미터로 줄때는 @ModelAttribute가 생략되있는 상태
	@GetMapping("/Admin")
	public String memberList(Model model, MemberVO member, MemberCertJoinVO memcert,
			PatientVO patient, HttpSession session) {
		session.setAttribute("email", adServ.memberList(member));
		model.addAttribute("memcertVal", adServ.memCertJoin(memcert));
		model.addAttribute("member", adServ.memberList(member));
		logger.info("AdminPage member is ={}", member);
		logger.info("AdminPage certVal is ={}", memcert);
		return "/Admin";
	}
	
	@GetMapping("/search")
	public ResponseEntity<ArrayList<MemberCertJoinVO>> memSearch(MemberCertJoinVO memcert){
		//ArrayList<MemberCertJoinVO> result = adServ.memSearch(memcert);
		logger.info("AdminPage keyword is ={}", memcert);
		return new ResponseEntity<>(adServ.memSearch(memcert), HttpStatus.OK);
	}
	
	@PostMapping("/patientWriteUp")
	public String membermodify(Model model, MemberVO member) {
		logger.info("Welcome First Diagnosis!");
		String getId = member.getId();
		String prefix = getId.substring(0, 8);
		model.addAttribute("prefix", prefix);
		model.addAttribute("member", member);
		model.addAttribute("joinMapVal", adServ.digModifyJoinMap(member));
		return "/Diagnosis";
	}
	
	@PostMapping("/patientModify")
	public String memberModify(Model model, MemberVO member) {
		logger.info("Welcome Modify Diagnosis!");
		String getId = member.getId();
		String prefix = getId.substring(0, 8);
		model.addAttribute("prefix", prefix);
		model.addAttribute("member", member);
		model.addAttribute("joinMapVal", adServ.digModifyJoinMap(member));
		logger.info("Welcome Diagnosis! member is = {}", member);
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
	
	
	/* 
	 * 홈화면에 버튼 없애기
	 * 관리자 로그인 해결하기 Y/N 분기 -> 뭔가 애매하긴한데 지금 할수있는건 별로 없는듯
	 * post이동으로 다 바꾸기, ajax쓸수있는곳은 다써보기 -> https://devmg.tistory.com/221
	 * 작성페이지 의사 이름or메일 끌어오기 전화번호 형식변경
	 * 전화번호 자동하이픈 -> 정규식
	 * 증명서 다운 post 처리하기
	 * 이름/주민없이 회원가입이나 로그인처리 XX -> 정규식에서 캇 가능?
	 * 
	 * 
	 * 조인! 제일 중요 (완료)
	 * 증명서 리스트는 지금처럼 3개 띄우고 신청클릭시 해당페이지에 내역없음 띄우기
	 * 빈값도 나오게 하기 left조인쓰니까 됫음(완료)
	 * 환자리스트 에서 VO사용 조인셀렉트(완료), 작성/수정창에서 조인셀렉트(완료)
	 * Diagnosis.jsp에 환자이름 미리 집어넣기(완료)
	 * 회원가입할때 환자코드?로 자동 insert되게 하기 sql에 디폴트줘서 해결(완료)
	 * update 하기 id값을 못가져옴 form태그 (완료!)
	 * pcode 이름바꾸고 옵션으로 다시만들기 (완료)
	 * 리스트 김원장 지우기 doctor칼럼 y/n값 줘서 추가했고 (완료)
	 * member 테이블에 환자/관리자 여부 칼럼 추가 (완료) 
	 * certificate테이블에 수술날짜 칼럼추가 (완료)
	 * pcode선택 안되있을때 경고창띄우기(완료)
	 * 환자분류(pcode)에따른 필요한 칼럼만 insert하기(완료)
	 * 로그인했을때 세션? pcode끌고 가서 if문? join으로 select문 작성한뒤에 데이터 끌고와야할듯 (완료?)
	 * update페이지에 기존정보 띄워주기(완료)
	 * 새로고침하면 회원가입 복사됨 ㅋㅋ -> 포워드방식으로 진입해서 그렇다고함
	 * RedirectView redirectView = new RedirectView("/", false);
	 * modelAndView.setView(redirectView); 모델앤뷰에서 리다이렉트 직접지정해줘서 완료
	 * email중복 검사 체크 (완료)
	 * 리스트에서 pcode가있을때 는 버튼 수정하기로 바꾸기 (완료)
	 * pcode에 1번 → 일반진단만 작성, 2번 →  입퇴원 날짜만, 3번 →  입퇴원 날짜, 수술명, 수술날짜: 해당코드에 맞게 (완료)
	 * 환자번호 UUID 뒤에짜르고 보여줘보기 ex)환자명/환자번호 : 박환자/298382 (완료)
	 * 수정하고 환자분류 alert창띄우고 그냥 update됨 ㅋ (완료)
	 * 로그아웃버튼 만들기/관리자여부에따른 관리자페이지 버튼 (완료)
	 * ajax검색기능 (완료)
	 * 비 로그인 증명서페이지 접근제한 (완료)
	 * js 정규식, 약관? ㅇ
	 * 
	 * 정보가져오고 싶으면 mapper.xml에서 셀렉트에 원하는칼럼 넣어야함 
	 * ${joinMapVal.patientVal[0].disease}은 리스트의 첫 번째 요소에서 disease 속성을 가져온다는 의미
	 * digSetParam.js 입퇴원 날짜 바꾸기 Diagnosis 적성/수정 두개 jps 입퇴원 날짜 고치기, 이전값 value로 쏴줌
	 * 리다이렉트 쓰면 model초기화됨 --> model안먹힘 로그인페이지 ------리다이렉트 사용시 model 사용법 or 다른방법 찾기 -----------
	 * PPT 만들기...
	 * 
	 * 
	 * 주말동안 한거 (학원가서 덮어쓰기 할것들)
	 * 1. email중복 검사 체크 (완료) 회원가입 관련 모든파일들 + js ㅇㅋ
	 * 2. admin.jsp 작성,수정버튼<c:if>쓴거 ㅇㅋ
	 * 3. code에 맞게 input태그 열리게하기 js새로만든거랑 jsp에 추가하기 ㅇㅋ
	 * 4. 환자번호 부여하기 patientWriteUp컨트롤러랑 Diagnosis.jsp prefix써주기
	 * pmp자격증?
	 * 
	 */

	

}
