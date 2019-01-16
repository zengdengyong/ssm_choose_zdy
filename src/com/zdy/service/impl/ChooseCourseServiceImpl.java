package com.zdy.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.zdy.dao.ChooseCourseMapper;
import com.zdy.service.ChooseCourseService;
import com.zdy.vo.ChooseCourseVo;
@Service
public class ChooseCourseServiceImpl implements ChooseCourseService {
	@Resource
	private ChooseCourseMapper chooseCourseMapper;
	
	@Override
	public List<ChooseCourseVo> queryStudentCourseAndTeatherByName(String stuName) {
		// TODO Auto-generated method stub
		List<ChooseCourseVo> queryStudentCourseAndTeatherByName = chooseCourseMapper.queryStudentCourseAndTeatherByName(stuName);
		return queryStudentCourseAndTeatherByName;
	}

}
