package com.zdy.service;

import java.util.List;

import com.zdy.vo.ChooseCourseVo;

public interface ChooseCourseService {
	//通过id查询需要的学生信息，老师，课程相关信息
		List<ChooseCourseVo> queryStudentCourseAndTeatherByName(String stuName);
}
