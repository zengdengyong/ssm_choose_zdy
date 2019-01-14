package com.zdy.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.zdy.vo.ChooseCourseVo;

public interface ChooseCourseMapper {
	//通过id查询需要的学生信息，老师，课程相关信息
	List<ChooseCourseVo> queryStudentCourseAndTeatherByName(@Param("sName")String sName);
}
