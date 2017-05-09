package com.lovo.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lovo.bean.RoleBean;
import com.lovo.service.RoleService;

/**
 * 权限接口实现
 * @author Administrator
 *
 */
@Service("soleService")
@Transactional(readOnly=false,rollbackFor=Exception.class)
public class RoleServiceImpl extends BaseService implements RoleService{

	public RoleServiceImpl() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public RoleBean findById(int id) throws Exception {
		RoleBean bean=(RoleBean)this.client.queryForObject("roleBean.findById",id);
		return bean;
	}

}
