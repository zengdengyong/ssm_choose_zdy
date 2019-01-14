package com.zdy.test1;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/exception")
public class TestException {
	@GetMapping("/testExcepption")
	public String testException() throws Exception{
		throw new Exception();
	}
}
