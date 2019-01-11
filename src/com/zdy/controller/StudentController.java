package com.zdy.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zdy.model.Student;
import com.zdy.service.StudentService;

@Controller
@RequestMapping("/auth")
public class StudentController {
	@Resource
	private StudentService studentService;
	//登录页面
	@GetMapping(value="/login")
	public String  login(){
		System.out.println("login for GetMapping!!!!");
		return "login";
	}
	//检查登录...
	@PostMapping(value="/login")
	public String reLogin(
			@RequestParam("sNameOrEmail")String sNameOrEmail,
			@RequestParam("sPassword")String sPassword,
			HttpSession session,
			Model model){
		if(studentService.isStudent(sNameOrEmail,sPassword,session)){
			//通过用户名和密码查出student信息
			
			//把用户名或者邮箱存入作用域
			session.setAttribute("sNameOrEmail", sNameOrEmail);
			return "index";
		}else{
			model.addAttribute("message", "用户名或者密码错误!");
			return "login";
		}
		
	}
	//直接去index页面
	@RequestMapping("/goIndex")
	public String goIndex(){
		System.out.println("进入到index页面！！");
		return "index";
	}
	//切换账号，退出登录
	@RequestMapping("logout")
	public String logout(HttpSession session){
		session.invalidate();
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
