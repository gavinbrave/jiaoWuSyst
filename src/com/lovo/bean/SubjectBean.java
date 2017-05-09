package com.lovo.bean;
/**
 * 学科实体类
 * @author Administrator
 *
 */
public class SubjectBean {
	/**id*/
	private int subjectId;
	/**学科名称*/
	private String subjectName;
	public SubjectBean() {
	}
	public void finalize() throws Throwable {

	}
	public String getSubjectName() {
		return subjectName;
	}
	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}
	public int getSubjectId() {
		return subjectId;
	}
	public void setSubjectId(int subjectId) {
		this.subjectId = subjectId;
	}
}
