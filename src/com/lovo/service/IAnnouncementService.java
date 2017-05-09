package com.lovo.service;
import java.sql.Date;

import com.lovo.bean.AnnouncementBean;
import com.lovo.bean.CutPageBean;

/**
 * 公告接口
 * @author 007
 * @version 1.0
 */
public interface IAnnouncementService {

	/**
	 * 根据条件分页模糊查询
	 * 
	 * @param endTime    结束时间
	 * @param startTime    开始时间
	 * @param name    公告名字
	 */
	public CutPageBean findByItem(int pageNO, Date endTime, Date startTime, String name)throws Exception;

	/**
	 * 发布公告（发布公告要选择
	 * ）
	 * 
	 * @param bean    公告对象
	 */
	public void add(AnnouncementBean bean)throws Exception;

	/**
	 * 删除公告（要做级联删除，先删除从表再删除主表）
	 * 
	 * @param id    id
	 */
	public void del(int id)throws Exception;

	/**
	 * 
	 * @param annId    公告id
	 */
	public AnnouncementBean findById(int annId)throws Exception;
}