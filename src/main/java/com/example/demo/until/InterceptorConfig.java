package com.example.demo.until;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Component
public class InterceptorConfig implements WebMvcConfigurer {
	@Autowired
	myInterceptor mInterceptor;
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(mInterceptor)
		.addPathPatterns("/cart/**")
		.addPathPatterns("/admin/products/**")
		.addPathPatterns("/admin/categories/**")
		.addPathPatterns("/admin/accounts/**")
		.addPathPatterns("/admin/order-details/**")
		.addPathPatterns("/admin/orders/**");
	}
}
