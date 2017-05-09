package com.lovo.bean;

import java.sql.Date;

/**
 * 公告
 * @author 007
 * @version 1.0
 */
public class AnnouncementBean {
	/**
	 * id
	 */
	private int id;
	/**
	 * 标题
	 */
	private String title;
	/**
	 * 内容
	 */
	private String content;
	/**
	 * 创建时间
	 */
	private Date createTime=new Date(System.currentTimeMillis());

	public AnnouncementBean(){

	}

	public AnnouncementBean(String title, String content, Date createTime) {
		super();
		this.title = title;
		this.content = content;
		this.createTime = createTime;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public void finalize() throws Throwable {

	}

	@Override
	public String toString() {
		return "AnnouncementBean [content=" + content + ", createTime="
				+ createTime + ", id=" + id + ", title=" + title + "]";
	}

	

}