/**  
* @Project: erp
* @Title: PermissionAssignmentAction.java
* @Package com.erp.action
* @Description: TODO:
* @author lsy 756514656@qq.com
* @date 2013-5-17 下午3:16:55
* @Copyright: 2013 www.example.com Inc. All rights reserved.
* @version V1.0  
*/
package com.erp.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.springframework.beans.factory.annotation.Autowired;

import com.alibaba.fastjson.JSON;
import com.erp.model.Role;
import com.erp.service.PermissionAssignmentService;
import com.erp.util.Constants;
import com.erp.viewModel.GridModel;
import com.erp.viewModel.Json;
import com.opensymphony.xwork2.ModelDriven;

/**
 * 类功能说明 TODO:
 * 类修改者
 * 修改日期
 * 修改说明
 * <p>Title: PermissionAssignmentAction.java</p>
 * <p>Description:福产流通科技</p>
 * <p>Copyright: Copyright (c) 2006</p>
 * <p>Company:福产流通科技有限公司</p>
 * @author lsy 756514656@qq.com
 * @date 2013-5-17 下午3:16:55
 * @version V1.0
 */
@Namespace("/permission")
@Action(value = "permissionAssignmentAction")
public class PermissionAssignmentAction extends BaseAction implements ModelDriven<Role>
{
	private static final long serialVersionUID = -7653440308109010857L;
	private PermissionAssignmentService permissionAssignmentService;
	private Integer id;
	private String checkedIds;
	private Role role;
	

	public Role getRole()
	{
		return role;
	}

	public void setRole(Role role )
	{
		this.role = role;
	}


	public String getCheckedIds()
	{
		return checkedIds;
	}

	public void setCheckedIds(String checkedIds )
	{
		this.checkedIds = checkedIds;
	}

	public Integer getId()
	{
		return id;
	}

	public void setId(Integer id )
	{
		this.id = id;
	}

	@Autowired
	public void setPermissionAssignmentService(PermissionAssignmentService permissionAssignmentService )
	{
		this.permissionAssignmentService = permissionAssignmentService;
	}
	
	/**  
	* 函数功能说明 TODO:按节点查询所有程式
	* Administrator修改者名字
	* 2013-5-10修改日期
	* 修改内容
	* @Title: findAllFunctionList 
	* @Description:
	* @param @return
	* @param @throws Exception    设定文件 
	* @return String    返回类型 
	* @throws 
	*/
	public String findAllFunctionList() throws Exception
	{
		OutputJson(permissionAssignmentService.findAllFunctionsList(id));
		return null;
	}
	
	/**  
	* 函数功能说明 TODO:查询所有角色
	* Administrator修改者名字
	* 2013-5-20修改日期
	* 修改内容
	* @Title: findAllRoleList 
	* @Description: 
	* @param @return
	* @param @throws Exception    设定文件 
	* @return String    返回类型 
	* @throws 
	*/
	public String findAllRoleList() throws Exception
	{
		Map<String, Object> map = searchRole();
		GridModel gridModel=new GridModel();
		gridModel.setRows(permissionAssignmentService.findAllRoleList(map, page, rows,true));
		gridModel.setTotal(permissionAssignmentService.getCount(map));
		OutputJson(gridModel);
		return null;
	}

	private Map<String, Object> searchRole()
	{
		Map<String, Object> map=new HashMap<String, Object>();
		if (null!=searchValue&&!"".equals(searchValue))
		{
			map.put(searchName, Constants.GET_SQL_LIKE+searchValue+Constants.GET_SQL_LIKE);
		}
		return map;
	}
	
	/**  
	* 函数功能说明 TODO:查询所有角色不分页
	* Administrator修改者名字
	* 2013-5-29修改日期
	* 修改内容
	* @Title: findAllRoleListNotPage 
	* @Description: 
	* @param @return
	* @param @throws Exception    设定文件 
	* @return String    返回类型 
	* @throws 
	*/
	public String findAllRoleListNotPage() throws Exception
	{
		Map<String, Object> map = searchRole();
		GridModel gridModel=new GridModel();
		gridModel.setRows(permissionAssignmentService.findAllRoleList(map, null, null,false));
		OutputJson(gridModel);
		return null;
	}
	
	/**  
	* 函数功能说明 TODO:有roleId获取角色权限
	* Administrator修改者名字
	* 2013-5-29修改日期
	* 修改内容
	* @Title: getRolePermission 
	* @Description: TODO:
	* @param @return
	* @param @throws Exception    设定文件 
	* @return String    返回类型 
	* @throws 
	*/
	public String getRolePermission() throws Exception
	{
		OutputJson(permissionAssignmentService.getRolePermission(getModel().getRoleId()));
		return null;
	}
	
	/**  
	* 函数功能说明 TODO:保存角色权限
	* Administrator修改者名字
	* 2013-5-29修改日期
	* 修改内容
	* @Title: savePermission 
	* @Description: 
	* @param @return
	* @param @throws Exception    设定文件 
	* @return String    返回类型 
	* @throws 
	*/
	public String savePermission() throws Exception
	{
		Json json=new Json();
		if (permissionAssignmentService.savePermission(getModel().getRoleId(), checkedIds))
		{
			json.setStatus(true);
			json.setMessage("分配成功！查看已分配权限请重新登录！");
		}else {
			json.setMessage("分配失败！");
		}
		OutputJson(json);
		return null;
	}
	
	/**  
	* 函数功能说明 TODO:持久化角色
	* Administrator修改者名字
	* 2013-5-29修改日期
	* 修改内容
	* @Title: persistenceRole 
	* @Description:
	* @param @return
	* @param @throws Exception    设定文件 
	* @return String    返回类型 
	* @throws 
	*/
	public String persistenceRole() throws Exception
	{	
		Map<String, List<Role>> map=new HashMap<String, List<Role>>();
		map.put("addList", JSON.parseArray(inserted, Role.class));
		map.put("updList", JSON.parseArray(updated, Role.class));
		map.put("delList", JSON.parseArray(deleted, Role.class));
		Json json=new Json();
		if (permissionAssignmentService.persistenceRole(map)) {
			json.setStatus(true);
			json.setMessage("数据更新成功！");
		}else {
			json.setMessage("提交失败了！");
		}
		OutputJson(json);
		return null;
	}
	
	/**  
	* 函数功能说明 TODO:弹窗持久化角色
	* Administrator修改者名字
	* 2013-6-14修改日期
	* 修改内容
	* @Title: persistenceRoleDlg 
	* @Description: 
	* @param @return
	* @param @throws Exception    设定文件 
	* @return String    返回类型 
	* @throws 
	*/
	public String persistenceRoleDlg() throws Exception
	{
		OutputJson(getMessage(permissionAssignmentService.persistenceRole(getModel())),Constants.TEXT_TYPE_PLAIN);
		return null;
	}
	
	public String delRole() throws Exception
	{
		OutputJson(getMessage(permissionAssignmentService.persistenceRole(getModel().getRoleId())));
		return null;
	}
	public Role getModel()
	{
		if (null==role)
		{
			role =new Role();
		}
		return role;
	}
}
