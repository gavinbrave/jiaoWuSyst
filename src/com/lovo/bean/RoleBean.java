package com.lovo.bean;
/**
 * 权限实体类
 * @author Administrator
 *
 */
public class RoleBean {
	/**id*/
	private int roleId;
	/**权限名称*/
	private String roleName;
	public RoleBean() {
	}
	public void finalize() throws Throwable {
	}
	public String getRoleName() {
		return roleName;
	}
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
	public int getRoleId() {
		return roleId;
	}
	public void setRoleId(int roleId) {
		this.roleId = roleId;
	}
}
