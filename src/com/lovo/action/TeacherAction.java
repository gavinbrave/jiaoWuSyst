package com.lovo.action;

import java.sql.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lovo.bean.CutPageBean;
import com.lovo.bean.RoleBean;
import com.lovo.bean.SubjectBean;
import com.lovo.bean.TeacherBean;
import com.lovo.service.TeacherService;

@RequestMapping("/teacher")
@Controller
public class TeacherAction {
	@Resource
	private TeacherService teacher;
	
	//修改密码
	@RequestMapping("updatePwd")
	public String updatePwd(String oldPwd,String pwd,HttpServletRequest request)throws Exception{
		TeacherBean bean=(TeacherBean)request.getSession().getAttribute("teacherBean");
		System.out.println(bean+"----------");
		boolean zhi=teacher.updatePwd(oldPwd, bean, pwd, bean.getId());
		if(zhi){//修改密码成功
			request.getSession().invalidate();//清空所有的session
			request.getSession().setAttribute("ok","修改密码成功.....");
			//跳转到登陆界面
			return "redirect:/login.jsp";
		}else{ //修改密码失败
			request.getSession().setAttribute("error1","原密码和老密码不匹配！！！");
			return "/changePwd.jsp";
		}
		
	}
	
	@RequestMapping("findByItem")
	public void findAll(int pageNO,String subjectName,String name,Date startTime,Date endTime,HttpServletResponse response) throws Exception{
		CutPageBean cutBean = teacher.findByItem(pageNO, subjectName, name,startTime,endTime);
		ObjectMapper om = new ObjectMapper();
		om.writeValue(response.getWriter(), cutBean);
	}
	
	@RequestMapping("updateState")
	public void updatestate(int id,HttpServletResponse response)throws Exception{
		teacher.updateState(id, "离职");
		response.getWriter().print("");
	}
	@RequestMapping("add")
	public String addTeacher(TeacherBean tbean,SubjectBean subjectBean,RoleBean roleBean)throws Exception{
		tbean.setSubjectBean(subjectBean);
		tbean.setRole(roleBean);
		teacher.add(tbean);
		return "/jsp/teacherMain.jsp";
	}
	@RequestMapping("updateTeacher")
	public String updateTeacher(TeacherBean tbean,HttpServletResponse response)throws Exception{
		teacher.updateTeacher(tbean);
		response.getWriter().print("修改成功！");
		return "/jsp/teacherMain.jsp";
	}
	
	@RequestMapping("findById")
	public String findById(int id,String find,HttpServletRequest request) throws Exception{
		TeacherBean bean = teacher.findById(id);
		request.setAttribute("teacher", bean);
		if("update".equals(find)){
			return "/jsp/updateTeacher.jsp";
		}else if("show".equals(find)){
			return "/jsp/showTeacher.jsp";
		}
		return "/jsp/teacherMain.jsp";
	}
}
