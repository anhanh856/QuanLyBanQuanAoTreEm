package com.example.demo.until;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
@Component
public class myInterceptor implements HandlerInterceptor {
	@Override
	public boolean preHandle(
			HttpServletRequest req, 
			HttpServletResponse resp,
			Object handler) throws IOException {
		if(req.getSession().getAttribute("userLogin") == null) {
			req.getSession().setAttribute("secureUri", req.getRequestURI());
			resp.sendRedirect("/Ass_Java5/login/login1");
			return false;
		}
				return true;
		
	}
	@Override
	public void postHandle(
			HttpServletRequest req, 
			HttpServletResponse resp,
			Object handler,
			ModelAndView modelAndView) {
		System.out.println("DemolLogInterceptor-postHandler");
	}
	@Override
	public void afterCompletion(
			HttpServletRequest req, 
			HttpServletResponse resp,
			Object handler,
			Exception ex) {
		System.out.println("DemolLogInterceptor-afterHandler");
	}
}
