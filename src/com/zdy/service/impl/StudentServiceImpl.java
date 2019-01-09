package com.zdy.service.impl;

import java.util.List;

import javax.annotation.Resource;

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

}
