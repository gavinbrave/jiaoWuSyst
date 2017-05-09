package com.lovo.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lovo.bean.SubjectBean;
import com.lovo.service.SubjectService;

/**
 * 学科接口实现
 * @author Administrator
 *
 */
@Service("subjectService")
@Transactional(readOnly=false,rollbackFor=Exception.class)
public class SubjectServiceImpl extends BaseService implements SubjectService{

	public SubjectServiceImpl() {
	}

	@Override
	
	public SubjectBean findById(int id) throws Exception {
		SubjectBean bean=(SubjectBean)this.client.queryForObject("subjectBean.findById",id);
		return bean;
	}
}
