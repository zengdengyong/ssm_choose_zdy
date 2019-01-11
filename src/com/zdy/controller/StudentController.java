package com.zdy.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zdy.model.Student;
import com.zdy.service.StudentService;

@Controller
@RequestMapping("/auth")
public class StudentController {
	@Resource
	private StudentService studentService;
	//检查登录
	@GetMapping(value="/login")
	public String  login(){
		System.out.println("直接login页面！！！");
		return "login";
	}
	@PostMapping(value="/login")
	public String reLogin(){
		System.out.println("post方法的Login");
		
		return "login";
	}
	
	//查询所有的学生信息
	@RequestMapping("/queryStudents")
	@ResponseBody
	public List<Student> queryStudents(){
		List<Student> students = studentService.queryStudents();
		
		return students;
	}

}
