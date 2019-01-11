package com.zdy.service.impl;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.zdy.dao.StudentMapper;
import com.zdy.model.Student;
import com.zdy.service.StudentService;

@Service
public class StudentServiceImpl implements StudentService{
	
	@Resource
	private StudentMapper studentMapper;
	//查询所有的学生
	@Override
	public List<Student> queryStudents() {
		
		List<Student> students = studentMapper.queryStudents();
		return students;
		
	}
	//查询对应名字密码下的用户是否存在
	@Override
	public boolean isStudent(String sNameOrMail, String sPassword, HttpSession session) {
		//调用下面的方法===名字或者通过邮箱密码查询对应用户
		Student student = queryStudentBySnameOrEamilOrpassword(sNameOrMail, sPassword);
		if(student!=null){
			session.setAttribute("student", student);
			return true;
		}else{
			return false;
		}
		
	}
	//通过用户名或者邮箱查出对应饿student
	@Override
	public Student queryStudentBySnameOrEamilOrpassword(
			String sNameOrMail,
			String sPassword) {
		String sName = null;
		String sEmail =null;
		if(sNameOrMail.contains("@")){
			sEmail=sNameOrMail;
		}else{
			sName=sNameOrMail;
		}
		Student student = studentMapper.queryStudentNameOrPassword(sName, sEmail, sPassword);
		return student;
	}
	

}
