package com.bitacademy.helpme.security;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.core.MethodParameter;
import org.springframework.web.bind.support.WebArgumentResolver;
import org.springframework.web.bind.support.WebDataBinderFactory;
import org.springframework.web.context.request.NativeWebRequest;
import org.springframework.web.method.support.HandlerMethodArgumentResolver;
import org.springframework.web.method.support.ModelAndViewContainer;

import com.bitacademy.helpme.vo.UserVo;
import com.bitacademy.helpme.security.AuthUser;

public class AuthUserHandlerMethodArgumentResolver implements HandlerMethodArgumentResolver {

	public boolean supportsParameter(MethodParameter parameter) {
		// TODO Auto-generated method stub
		AuthUser authUser = parameter.getParameterAnnotation(AuthUser.class);
		//@AuthUser가 안붙은 경우
		if(authUser==null) {
			return false;
		}
		// 파라미터 타입이 UserVo가 아니면...
		if(!parameter.getParameterType().equals(UserVo.class)) {
			return false;
		}
		return true;
	}

	public Object resolveArgument(MethodParameter parameter, ModelAndViewContainer mavContainer,
			NativeWebRequest webRequest, WebDataBinderFactory binderFactory) throws Exception {
		// TODO Auto-generated method stub
		if(!supportsParameter(parameter)) {
			return WebArgumentResolver.UNRESOLVED;
		}
		HttpServletRequest request = (HttpServletRequest) webRequest.getNativeRequest();
		HttpSession session = request.getSession();
		if(session ==null) {
			return null;
		}
		System.out.println(session.getAttribute("authUser"));
		return session.getAttribute("authUser");
	}
	
}
