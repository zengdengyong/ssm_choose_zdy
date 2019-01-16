package com.zdy.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.zdy.model.Student;

public interface StudentMapper {
	//查询所有的学生
	List<Student> queryStudents();
	//查询用户名，邮箱，密码
	Student queryStudentNameOrPassword(
			@Param("stuName")String stuName,
			@Param("stuEmail")String stuEmail,
			@Param("stuPassword")String stuPassword);
	
	//修改密码
	void updatePassword(@Param("stuEmail")String stuEmail,@Param("stuPassword")String stuPassword);
	
}
