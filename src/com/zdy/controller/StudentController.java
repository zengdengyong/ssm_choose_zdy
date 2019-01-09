package com.zdy.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zdy.model.Student;
import com.zdy.service.StudentService;

@Controller
@RequestMapping("/auth")
public class StudentController {
	@Resource
	private StudentService studentService;
	
	@RequestMapping("/queryStudents")
	@ResponseBody
	public List<Student> queryStudents(){
		List<Student> students = studentService.queryStudents();
		
		return students;
	}

}
