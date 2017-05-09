package com.lovo.service;

import java.sql.Date;

import com.lovo.bean.CutPageBean;

/**
 * 日志
 * @author 007
 * @version 1.0
 * @created 19-1月-2015 13:22:04
 */
public interface ILogBeanService {

	/**
	 * 日志的分页条件查询
	 * 
	 * @param pageNO    页码
	 * @param endTime    结束时间
	 * @param startTime    开始时间
	 */
	public CutPageBean findByItem(int pageNO, Date endTime, Date startTime)throws Exception;

}