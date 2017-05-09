package com.lovo.bean;

import java.sql.Date;

/**
 * 日志bean
 * @author 007
 * @version 1.0
 * @created 
 */
public class LogBean {

	/**
	 * id
	 */
	private int id;
	/**
	 * 错误日期
	 */
	private Date errorTime;
	/**
	 * 错误内容
	 */
	private String content;
	/**
	 * 错误名字
	 */
	private String name;

	public LogBean(){

	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getErrorTime() {
		return errorTime;
	}

	public void setErrorTime(Date errorTime) {
		this.errorTime = errorTime;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void finalize() throws Throwable {

	}

}