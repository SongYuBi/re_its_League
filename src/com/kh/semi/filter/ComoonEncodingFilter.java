package com.kh.semi.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

/**
 * Servlet Filter implementation class ComoonEncodingFilter
 */
@WebFilter("/*")
public class ComoonEncodingFilter implements Filter {

	/**
	 * Default constructor.
	 */
	public ComoonEncodingFilter() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest hr = (HttpServletRequest) request;
		System.out.println("요청방식 : " + hr.getMethod());
		if (hr.getMethod().equalsIgnoreCase("POST")) { // getMethod() 로 하면 get또는 post를 린턴하니까 대문자로 post이면 인코딩
			request.setCharacterEncoding("UTF-8");
			System.out.println("인코딩 완료!");
		}

		chain.doFilter(request, response);
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
