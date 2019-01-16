package com.zdy.service.impl;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zdy.common.Constants;
import com.zdy.dao.StudentMapper;
import com.zdy.model.Student;
import com.zdy.service.StudentService;

@Service
public class StudentServiceImpl implements StudentService{
	
	@Resource
	private StudentMapper studentMapper;
	
	//查询所有的学生,并且用分页
	@Override
	public PageInfo<Student> queryStudents(Integer page) {
		//限制每页的信息
		PageHelper.startPage(page, Constants.PAGE_SIZE);
		//查询所有的学生
		List<Student> students = studentMapper.queryStudents();
		return new PageInfo<Student>(students);
		
	}
	
	
	//通过用户名或者邮箱查出对应的student
	@Override
	public Student queryStudentBySnameOrEamilOrpassword(
			String stuNameOrMail,
			String stuPassword) {
		String stuName = null;
		String stuEmail =null;
		if(stuNameOrMail.contains("@")){
			stuEmail=stuNameOrMail;
		}else{
			stuName=stuNameOrMail;
		}
		Student student = studentMapper.queryStudentNameOrPassword(stuName, stuEmail, stuPassword);
		return student;
	}
	
	//查询对应名字密码下的用户是否存在
	@Override
	public boolean isStudent(String stuNameOrMail, String stuPassword, HttpSession session) {
		//调用上面面的方法===名字或者通过邮箱密码查询对应用户
		Student student = queryStudentBySnameOrEamilOrpassword(stuNameOrMail, stuPassword);
		if(student!=null){
			session.setAttribute("student", student);
			return true;
		}else{
			return false;
		}
		
	}
	
	//传入对应的邮箱查询对应的学生是否存在
	@Override
	public boolean isStudent(String stuNameOrMail) {
		Student student = queryStudentBySnameOrEamilOrpassword(stuNameOrMail, null);
		boolean flag = false;
		if(student!=null){
			flag = true;
		}
		return flag;
	}
	/**
	 * 通过邮箱修改密码
	 */
	@Override
	@Transactional
	public void updatePassword(String stuEmail, String stuPassword) {
		studentMapper.updatePassword(stuEmail, stuPassword);
	}
	
	

}
