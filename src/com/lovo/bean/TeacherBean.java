package com.lovo.bean;

import java.sql.Date;

/**
 * 教师实体类
 * @author Administrator
 *
 */
public class TeacherBean {
	/**
	 * id
	 */
	private int id;
	/**
	 * 教师姓名
	 */
	private String name;
	/**
	 * 登陆密码
	 */
	private String pwd;
	/**
	 * 学科实体
	 */
	private SubjectBean subjectBean;
	/**
	 * 生日
	 */
	private Date birthday;
	/**开始工作日期*/
	private Date startTime;
	/**年龄*/
	private int age;
	/**教龄*/
	private int seniority;
	/**档案存放路径*/
	private String archiveFile;
	/**性别*/
	private String sex;
	/**权限*/
	private RoleBean role;
	/**邮箱*/
	private String email;
	
	public TeacherBean(){
		
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public SubjectBean getSubjectBean() {
		return subjectBean;
	}

	public void setSubjectBean(SubjectBean subjectBean) {
		this.subjectBean = subjectBean;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public Date getStartTime() {
		return startTime;
	}

	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public int getSeniority() {
		return seniority;
	}

	public void setSeniority(int seniority) {
		this.seniority = seniority;
	}

	public String getArchiveFile() {
		return archiveFile;
	}

	public void setArchiveFile(String archiveFile) {
		this.archiveFile = archiveFile;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public RoleBean getRole() {
		return role;
	}

	public void setRole(RoleBean role) {
		this.role = role;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void finalize() throws Throwable {

	}
}
