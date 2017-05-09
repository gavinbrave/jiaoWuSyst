package com.lovo.service.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lovo.bean.CutPageBean;
import com.lovo.bean.RoleBean;
import com.lovo.bean.SubjectBean;
import com.lovo.bean.TeacherBean;
import com.lovo.service.TeacherService;
/**
 * 教师接口实现
 * @author 007
 *
 */
@Service("teacherService")
@Transactional(readOnly=false,rollbackFor=Exception.class)
public class TeacherServiceImpl extends BaseService implements TeacherService {

	@Override
	public CutPageBean findByItem(int pageNO, String subjectName, String name,Date startTime,Date endTime) throws Exception {
		Map paramMap=new HashMap();
		paramMap.put("subjectName", subjectName);
		paramMap.put("name", name);
		paramMap.put("startTime", startTime);
		paramMap.put("endTime", endTime);
		return  this.cut(pageNO, "teacherBean.findByItem", "teacherBean.findByCount", paramMap);
	}

	@Override
	public boolean updatePwd(String oldPwd, TeacherBean bean, String pwd, int id) throws Exception {
		if(bean.getPwd().equals(oldPwd)){//原密码和老密码相等了
			Map map=new HashMap();
			map.put("pwd", pwd);
			map.put("id", id);
			this.client.update("teacherBean.updateByPwd", map);
			return true;
		}
		return false;
	}

	@Override
	public void updateState(int id, String state) throws Exception {
		Map map=new HashMap();
		map.put("id", id);
//		map.put("state", state); 不用，直接改写状态为0
		this.client.update("teacherBean.updateState", map);
	}

	@Override
	public void add(TeacherBean bean) throws Exception {
		Map map=new HashMap();
		map.put("bean", bean);
		this.client.insert("teacherBean.add", map);
	}

	@Override
	public void updatePower(int id, RoleBean powerBean) throws Exception {
		Map map=new HashMap();
		map.put("bean", powerBean);
		map.put("teacherId", id);
		this.client.update("teacherBean.update", map);
	}

	@Override
	public TeacherBean login(String pwd, String name) throws Exception {
		Map map=new HashMap();
		map.put("pwd", pwd);
		map.put("name", name);
		TeacherBean bean=(TeacherBean)this.client.queryForObject("teacherBean.login",map);
		if(bean==null){//实例bean为空 就返回null
			return null;
		}
		return bean;
	}

	@Override
	public TeacherBean findById(int id) throws Exception {
		TeacherBean bean=(TeacherBean)this.client.queryForObject("teacherBean.findById",id);
		return bean;
	}

	@Override
	public TeacherBean findByName(String name) throws Exception {
		return (TeacherBean)this.client.queryForObject("teacherBean.findByName", name);
	}

	@Override
	public void updateTeacher(TeacherBean bean) throws Exception {
		Map map=new HashMap();
		map.put("bean", bean);
		this.client.insert("teacherBean.updateTeacher", map);
	}
}
