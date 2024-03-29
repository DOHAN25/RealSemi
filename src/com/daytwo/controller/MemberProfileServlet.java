package com.daytwo.controller;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.member.biz.MemberBizImpl;
import com.member.dao.MemberDao;
import com.member.dao.MemberDaoImpl;
import com.member.dto.MemberDto;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;


@WebServlet("/MemberProfile")
public class MemberProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		MultipartRequest multi = null;
		int fileMaxSize = 10 * 1024 * 1024;
		String savePath = request.getRealPath("/upload").replaceAll("\\\\", "/");
		
		try {
			multi = new MultipartRequest(request, savePath , fileMaxSize, "UTF-8", new DefaultFileRenamePolicy());
		} catch (Exception e) {
			// TODO: handle exception
			request.getSession().setAttribute("messageType", "오류메세지");
			request.getSession().setAttribute("messageContent", "파일 크기는 10MB를 넘을 수 없습니다.");
			response.sendRedirect("updateProfile.jsp");
			return;
		}
		 String member_id = multi.getParameter("member_id");
		 HttpSession session = request.getSession();
		 if(!member_id.equals((String) session.getAttribute("member_id"))) {
			 session.setAttribute("messageType", "오류 메세지");
			 session.setAttribute("messageContent", "접근할 수 없습니다.");
			 response.sendRedirect("index.jsp");
			 return;
		 }
		 String fileName = "";
		 File file =  multi.getFile("memberProfile");
		 if(file != null) {
			 String ext = file.getName().substring(file.getName().lastIndexOf(".") + 1);
			 if(ext.equals("jpg") || ext.equals("png") || ext.equals("gif")) {
				 String prev = new MemberBizImpl().selectOneByID(member_id).getMember_profile();
				 File prevFile = new File(savePath + "/" + prev);
				 if(prevFile.exists()) {
					 prevFile.delete();
				 }
				 fileName = file.getName();
				 
			 } else {
				 if(file.exists()) {
					 file.delete();
				 }
				 session.setAttribute("messageType", "오류 메세지");
				 session.setAttribute("messageContent", "이미지 파일만 업로드 가능합니다.");
				 response.sendRedirect("profileUpdate.jsp");
				 return;
			 }
		 }
		 new MemberBizImpl().changeProfile(member_id, fileName);
		 session.setAttribute("messageType", "성공 메세지");
		 session.setAttribute("messageContent", "성공적으로 프로필이 설정되었습니다.");
		 response.sendRedirect("table.jsp");
		 return;
		
		 
		 
		 
	}

}
