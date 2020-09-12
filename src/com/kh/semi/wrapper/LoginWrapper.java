package com.kh.semi.wrapper;

import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Base64;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

public class LoginWrapper extends HttpServletRequestWrapper {

	public LoginWrapper(HttpServletRequest request) {
		super(request);
		// TODO Auto-generated constructor stub
	}

	@Override
	public String getParameter(String key) {
		String value = "";
		if(key != null && key.equals("password")) {
			//비밀번호 암호화
			value = getSha512(super.getParameter("password"));
		}else {
			//원래 기능으로 사용
			value = super.getParameter(key);
		}
		
		return value;
	}
	
	//암호화 처리 하는 메소드
		private static String getSha512(String pwd) {
			//시저 암호 알고리즘
			//암호화  //다이제스트
			//복호화 
			
			//암호화 -> 복호화 // 양방향 암호화 알고리즘
			//암호화 -x> 복호화 // 단방향 암호화 알고리즘
			
			//해시 알고리즘

			// 어떤 방식으로하던지 평문을 암호화하는데 매우 빠르고 글자 길이가 상항 일정함
			
			//솔팅 기법(다른 문장을 가미해서 복호화를 더 어렵게 만드는것.)
			
			//bcript 솔팅을하는데 랜덤하게 문장을 생성해서 붙인다.
			
			String encPwd ="";
			// 단방향 해시 암호화 알고리즘
			try {
				MessageDigest md = MessageDigest.getInstance("SHA-512");
				byte[] bytes = pwd.getBytes(Charset.forName("UTF-8"));
				md.update(bytes);
				
				encPwd = Base64.getEncoder().encodeToString(md.digest());//암호화처리된 바이트배열을 들고와서 encPwd에 넣어준다.
				
			} catch (NoSuchAlgorithmException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return encPwd;
		}
}
