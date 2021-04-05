package com.daytwo.dao;

import java.security.MessageDigest;

import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.daytwo.db.SqlMapConfig;
import com.daytwo.dto.LoginDto;

public class LoginDao extends SqlMapConfig {

	public List<LoginDto> selectAllUser() {
		SqlSession session = null;

		List<LoginDto> list = new ArrayList<LoginDto>();

		try {
			session = getSqlSessionFactory().openSession(true);
			list = session.selectList("loginmapper.selectList");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}

		return list;
	}

	// �쉶�썝媛��엯 �떆 �쉶�썝 異붽�
	public int insertUser(LoginDto dto) {
		int res = 0;
		System.out.println("insert : " + dto);

		try (SqlSession session = getSqlSessionFactory().openSession(true);) {
			res = session.insert("loginmapper.reginsert", dto);
			System.out.println("insert2 : " + dto);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return res;

	}

	// 濡쒓렇�씤
	public LoginDto login(String member_id, String member_pw) {
		SqlSession session = null;
		LoginDto dto = new LoginDto();
		System.out.println("login : " + member_id);
		System.out.println("pw : "+ member_pw);
		
		dto.setMember_id(member_id);
		dto.setMember_pw(member_pw);
		
		try {
			session = getSqlSessionFactory().openSession(true);
			 dto = session.selectOne("loginmapper.login", dto);
			 //System.out.println("test: " + dto.getMember_enabled());
			 
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}

		return dto;
	}
	
	//�븘�씠�뵒 �쑀臾� �솗�씤
	public int idCheck(String member_id) {
		SqlSession session = null;
		int res = 0;
		System.out.println("dao : " + member_id);
		try {
			session = getSqlSessionFactory().openSession(true);
			res = session.selectOne("loginmapper.idCheck", member_id);
			
			if(res>0) {
				res=1;
			}else {
				res=0;
			}
		} catch (Exception e) {
			System.out.println(e);
		} 
		
		return res;
	}
	
	//naver濡쒓렇�씤 �씠硫붿씪 以묐났泥댄겕
	public int naverCheck(String member_email) {
		SqlSession session = null;
		int res = 0;
		System.out.println("dao : " + member_email);
		try {
			session = getSqlSessionFactory().openSession(true);
			res = session.selectOne("loginmapper.naverCheck", member_email);
			
			if(res>0) {
				res=1;
			}else {
				res=0;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} 
		
		return res;
	}
	
	public LoginDto getlogininfo(String member_email) {
		LoginDto dto = new LoginDto();
		//硫ㅻ쾭�씠硫붿씪�쓣 蹂대궡�꽌 sql臾몄뿉 �꽔�뼱�꽌 select濡� dto媛��졇���빞吏�
		SqlSession session = null; 
		System.out.println("info : " + member_email);
		try {
			session = getSqlSessionFactory().openSession(true);
			dto = session.selectOne("loginmapper.logininfo", member_email);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		
		return dto;
	}
	
	
	//鍮꾨�踰덊샇 �븫�샇�솕(md5, sha-1, sha-256, sha-512)
	public String encodeHash(String pass) {
		String encodeString = "";
		
		try {
			MessageDigest md = MessageDigest.getInstance("SHA-256");
			md.update(pass.getBytes());
			byte[] encodeData = md.digest();
			for(int i = 0; i < encodeData.length; i++) {
				encodeString += Integer.toHexString(encodeData[i]&0xFF);
			}
			//System.out.println(encodeString);
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		
		return encodeString;
	}

}
