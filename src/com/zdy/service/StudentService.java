package com.zdy.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.zdy.model.Student;

public interface StudentService {
	//查询所有的学生
	List<Student> queryStudents();
	
	//查询对应名字密码下的用户是否存在......可以省略abstract
	public abstract boolean isStudent(String sNameOrMail, String sPassword, HttpSession session);
	
	//查询用户名或者邮箱密码对应的student
	Student queryStudentBySnameOrEamilOrpassword(String sNameOrMail, String sPassword);
	
	
	
}
