package com.bitacademy.helpme.security;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.bitacademy.helpme.service.UserService;
import com.bitacademy.helpme.vo.UserVo;



public class LoginInterceptor extends HandlerInterceptorAdapter {
	@Autowired
	private UserService userService;
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		System.out.println("로그인 인터셉터 실행됨");
		String id= request.getParameter("id");
		String password = request.getParameter("password");
		UserVo vo = new UserVo();
		vo.setId(id);
		vo.setPassword(password);
		System.out.println(vo.toString());
		UserVo authUser = userService.login(vo);
		if(authUser == null)
		{ 
			response.sendRedirect(request.getContextPath()+"/user/login?result=fail");
			return false;
		}
		//유저 확인 완료 session 처리
		HttpSession session =request.getSession(true);
		session.setAttribute("authUser", authUser);
		response.sendRedirect(request.getContextPath());
		return false;
	}
}
