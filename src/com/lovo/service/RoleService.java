package com.lovo.service;
import com.lovo.bean.RoleBean;

/**
 * 权限接口
 * @version 1.0
 */
public interface RoleService {

	/**
	 * 根据id返回权限对象
	 * 
	 * @param id    id
	 */
	public RoleBean findById(int id)throws Exception;
}