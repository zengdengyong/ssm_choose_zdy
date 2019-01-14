package com.zdy.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zdy.model.Student;
import com.zdy.service.StudentService;
import com.zdy.util.SendMailUtil2;
import com.zdy.util.VerificationUtil;
import com.zdy.util.SendMailUtil;

@Controller
@RequestMapping("/auth")
public class StudentController {
	@Resource
	private StudentService studentService;
	//登录页面
	@GetMapping(value="/login")
	public String  login(){
		System.out.println("login for GetMapping!!!!");
		return "login";
	}
	//检查登录...
	@PostMapping(value="/login")
	public String reLogin(
			@RequestParam("sNameOrEmail")String sNameOrEmail,
			@RequestParam("sPassword")String sPassword,
			HttpSession session,
			Model model){
		if(studentService.isStudent(sNameOrEmail,sPassword,session)){
			//通过用户名和密码查出student信息
			
			//把用户名或者邮箱存入作用域
			session.setAttribute("sNameOrEmail", sNameOrEmail);
			return "index";
		}else{
			model.addAttribute("message", "用户名或者密码错误!");
			return "login";
		}
		
	}
	//直接去index页面
	@RequestMapping("/goIndex")
	public String goIndex(){
		System.out.println("进入到index页面！！");
		return "index";
	}
	//切换账号，退出登录
	@RequestMapping("logout")
	public String logout(HttpSession session){
		session.invalidate();
		return "login";
		
	}
	
	//忘记密码,邮箱验证
//	@RequestMapping(value="/getVerification",method=RequestMethod.GET)
	@GetMapping("/getVerification")
	public String getVerification(){
		return "getVerification";
	}
	//获取验证码
//	@RequestMapping(value="/getVerification",method=RequestMethod.POST)
	@PostMapping("/getVerification")
	public String getVerification(@RequestParam("sEmail")String sEmail,HttpSession session,Model model){
		//首先应该判断是否有该邮箱号
		boolean isStudent = studentService.isStudent(sEmail);
		if(isStudent){
			//保存输入的邮箱到session
			session.setAttribute("sEmail", sEmail);
			/**
			 * 发送验证码到邮箱
			 */
			String fromMailName="17628289246@163.com";
			String password="zdy66071";
			String subject="验证码";
			//获取验证码
			String verification = VerificationUtil.getVerification();
			session.setAttribute("verificationCode", verification);
			String content="您获取的验证码是:"+verification;
			//发送验证码到邮箱
			SendMailUtil2.sendMessage(fromMailName, password, sEmail, subject, content, "163");
//			SendMailUtil.sendMessage(fromMailName, password, sEmail, subject, content);
			return "validateMail";
		}else{
			model.addAttribute("message", "没有该邮箱!");
			return "getVerification";
		}
		
	}
	
	/**
	 * 检查验证码
	 * @return
	 */
	@RequestMapping("/validateMail")
	public String validate(@RequestParam("verification")String verification,HttpSession session,Model model){
		String verificationCode = (String) session.getAttribute("verificationCode");
		if("".equals(verification)){
			//如果用户输入的为空
			model.addAttribute("message", "验证码不能为空");
			return "validateMail";
		}else{
			if(verificationCode.equals(verification)){
				return "alterPassword";
			}else{
				model.addAttribute("message", "验证码不对!");
				return "validateMail";
			}
		}
	}
	
	/**
	 * 修改密码
	 * @param session
	 * @return
	 */
	@RequestMapping("/alterPassword")
	public String resetPassword(@RequestParam("password1")String password1,
								@RequestParam("password2")String password2,
								HttpSession session,
								Model model){
		if(!password1.equals(password2)){
			model.addAttribute("message", "两次输入的密码不对应");
			return "alterPassword";
		}else{
			//修改密码
			String sEmail = (String) session.getAttribute("sEmail");
			studentService.updatePassword(sEmail, password1);
			//重新登录
			model.addAttribute("message", "密码修改成功,请重新登录!");
			return "login";
		}
	}
	
	
	//查询所有的学生信息
	@RequestMapping("/queryStudents")
	@ResponseBody
	public List<Student> queryStudents(){
		List<Student> students = studentService.queryStudents();
		
		return students;
	}

}
