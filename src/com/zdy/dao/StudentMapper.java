package com.zdy.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.zdy.model.Student;

public interface StudentMapper {
	//查询所有的学生
	List<Student> queryStudents();
	//查询用户名，邮箱，密码
	Student queryStudentNameOrPassword(
			@Param("sName")String sName,
			@Param("sEmail")String sEmail,
			@Param("sPassword")String sPassword);
	
	
}
