package com.lovo.service;
import com.lovo.bean.SubjectBean;

/**
 * 学科接口
 * @version 1.0
 */
public interface SubjectService {

	/**
	 * 根据id返回学科对象
	 * 
	 * @param id    id
	 */
	public SubjectBean findById(int id)throws Exception;
}