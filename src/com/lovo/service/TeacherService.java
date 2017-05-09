package com.lovo.service;
import java.util.Date;

import com.lovo.bean.CutPageBean;
import com.lovo.bean.RoleBean;
import com.lovo.bean.SubjectBean;
import com.lovo.bean.TeacherBean;

/**
 * 教师接口
 * @version 1.0
 */
public interface TeacherService {

	/**
	 * 根据条件分页查看教师
	 * 
	 * @param pageNO    页码
	 * @param subjectName    学科
	 * @param name    名字
	 * @param startTime    开始工作日期
	 */
	public CutPageBean findByItem(int pageNO, String subjectName, String name,Date startTime,Date endTime)throws Exception;

	/**
	 * 根据id 修改密码。根据传入的教师对象和原密码匹配，再来返回boolean值（真：修改密码成功,假：原密码不匹配）
	 * 
	 * @param oldPwd    老密码
	 * @param bean    教师实例bean
	 * @param pwd    密码
	 * @param id    id
	 */
	public boolean updatePwd(String oldPwd, TeacherBean bean, String pwd, int id)throws Exception;

	/**
	 * 根据教师工号id，修改状态
	 * 
	 * @param id    教师工号id
	 * @param state    状态名字 在职/离职
	 */
	public void updateState(int id, String state)throws Exception;

	/**
	 * 添加（权限对象也是要同时加入数据库中）
	 * 
	 * @param bean    工号对象
	 */
	public void add(TeacherBean  roleBean)throws Exception;

	/**
	 * 根据教师工号修改权限
	 * 
	 * @param id    工号id
	 * @param powerBean    权限对象
	 */
	public void updatePower(int id, RoleBean powerBean)throws Exception;

	/**
	 * 登陆
	 * 
	 * @param pwd    密码
	 * @param name    用户名
	 */
	public TeacherBean login(String pwd, String name)throws Exception;

	/**
	 * 根据id返回教师对象
	 * 
	 * @param id    工号id
	 */
	public TeacherBean findById(int id)throws Exception;
	/**
	 * 根据教师工号名字 看是否有该对象
	 * @param name
	 * @return
	 * @throws Exception
	 */
	public TeacherBean findByName(String name)throws Exception;
	/**
	 * 修改教师信息
	 * @param bean 修改的教师信息bean
	 * @return
	 * @throws Exception
	 */
	public void updateTeacher(TeacherBean bean)throws Exception;
}