package kh.spring.Service;

import java.util.Random;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import kh.spring.DAO.LoginDAO;
import kh.spring.DAO.SignupDAO;
import kh.spring.DTO.MemberDTO;
import utils.EncryptUtils;

@Service
public class LoginService {
	
	@Autowired
	LoginDAO lDAO;
	
	@Autowired
	SignupDAO sDAO;
	
	// 계정 정보 확인 서비스
	public boolean accountCheck(String email, String pw) {
		
		String encryptPw = EncryptUtils.SHA256(pw);
		
		return lDAO.accountCheck(email, encryptPw);
		
	}
	
	// 계정 정보 확인 서비스
	public boolean accountCheckBeforeSendCode(String name, String email) {
		
		return lDAO.accountCheckBeforeSendCode(name, email);
		
	}
	
	// MemberDTO 세션에 담기
	public MemberDTO getMemberDTO(String email, String pw) {
	
		String encryptPw = EncryptUtils.SHA256(pw);
		
		return lDAO.getMemberDTO(email, encryptPw);
	}
	
	
	// Email 찾기 서비스 : Transaction 처리 필요
	public String findEmail(String name, String phone) {
		
		if(lDAO.isExistEmail(name, phone)) {

			return lDAO.getEmail(name, phone);
		
		} else {
			
			return "none";
		}
	}
	
	// 인증 번호 확인 서비스
	public boolean mailAuth(String code, String email) {
		
		if(sDAO.mailAuth(code, email)) {
			return true;
		} else {
			return false;
		}
		
	}
	
	// 비밀번호 재설정 서비스
	public int resetPw(String email, String pw) {
		
		String encryPw = utils.EncryptUtils.SHA256(pw);
		
		return lDAO.resetPw(email, encryPw);
		
	}
	

	
}