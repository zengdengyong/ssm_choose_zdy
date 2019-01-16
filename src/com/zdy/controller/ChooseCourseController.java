package com.zdy.controller;

import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.zdy.common.ResultBean;
import com.zdy.service.ChooseCourseService;
import com.zdy.vo.ChooseCourseVo;

@RestController
@RequestMapping("/choose")
public class ChooseCourseController {
	@Resource
//	private ChooseCourseMapper chooseCourseMapper;
	private ChooseCourseService chooseCourseService;
	
	//通过学生名字查询对应的选课信息
	@PostMapping("/queryStudentCourseAndTeatherByName")
	public ResultBean queryStudentCourseAndTeatherByName(@RequestParam("sName")String stuName){
		List<ChooseCourseVo> stuChooseMessages = chooseCourseService.queryStudentCourseAndTeatherByName(stuName);
		ResultBean success = ResultBean.success(stuChooseMessages);
		return success;
		
	}
	@GetMapping("/test")
	public String test(){
		return "test";
		
	}
	
	
}
