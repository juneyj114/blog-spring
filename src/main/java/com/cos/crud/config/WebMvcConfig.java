package com.cos.crud.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebMvcConfig implements WebMvcConfigurer {

	// .addPathPatterns("/**");
	// .excludePathPatterns("/user/*")
	@Override
	public void addInterceptors(InterceptorRegistry registry) {

		registry.addInterceptor(new SessionInterceptor())
				.addPathPatterns("/post/**").excludePathPatterns("/post/detail/**");
//		registry.addInterceptor(new AdminInterceptor())
//				.addPathPatterns("/admin/**");

	}
}