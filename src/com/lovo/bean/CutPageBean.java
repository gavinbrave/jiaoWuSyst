package com.lovo.bean;

import java.util.List;

/**
 * 分页对象
 * @author 007
 * @version 1.0
 */
public class CutPageBean {

	/**
	 * 数据集合
	 */
	private List list;
	/**
	 * 总条数
	 */
	private int count;
	/**
	 * 总页数
	 */
	private int totalPage;

	public CutPageBean(){

	}

	public List getList() {
		return list;
	}

	public void setList(List list) {
		this.list = list;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public void finalize() throws Throwable {

	}

	@Override
	public String toString() {
		return "CutPageBean [count=" + count + ", list=" + list
				+ ", totalPage=" + totalPage + "]";
	}

}