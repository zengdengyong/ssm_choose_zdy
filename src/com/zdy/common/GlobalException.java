package com.zdy.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;
/**
 * 定义一个全局异常，实现HandlerExceptionResolver接口，重写方法
 * @author Administrator
 *
 */
@ControllerAdvice
public class GlobalException implements HandlerExceptionResolver {
	//定义异常跳转的页面
	private static final String ERROR_PAGE = "error";
	//异常返回信息
	private static String message = "网站正在升级维护...";
	
	@Override
	public ModelAndView resolveException(HttpServletRequest req,
			HttpServletResponse resp, Object obj, Exception e) {
		ModelAndView modelAndView = new ModelAndView(ERROR_PAGE);
		modelAndView.addObject("message", message);
		
		return modelAndView;
	}

}


//@ControllerAdvice
//public class GlobalException {
//		private static final String ERROR_PAGE = "error";
//		/**
//		 * 先来一个最大的异常
//		 */
//	@ExceptionHandler(value={Exception.class})
//	public ModelAndView handelerSysException(){
//		ModelAndView mav = new ModelAndView(ERROR_PAGE);
//		mav.addObject("message", "网站正在升级维护2222...");
//		return mav;
//	}
//	
//}




