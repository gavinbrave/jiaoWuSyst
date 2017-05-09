package com.lovo.action;


import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lovo.bean.TeacherBean;
import com.lovo.service.TeacherService;

@RequestMapping("/us")
@Controller
/**
 * 登陆模块单独的action
 */
public class LoginAction {
	@Resource
	private TeacherService teacher;
	@RequestMapping("/login")
	public String login(HttpServletRequest request ,String name,String pwd)throws Exception{
		TeacherBean bean=teacher.login(pwd,name);
		if(bean==null){//工号不正确
			request.setAttribute("error","用户名或者密码错误....");
			return "/login.jsp";
		}else{                
			//教师对象
			request.getSession().setAttribute("teacherBean", bean);
			return "/index.jsp";
		}
	}
}
