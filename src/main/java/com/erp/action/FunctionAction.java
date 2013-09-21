/**  
* @Project: erp
* @Title: FunctionAction.java
* @Package com.erp.action
* @Description: TODO:
* @author lsy 756514656@qq.com
* @date 2013-5-9 下午1:50:56
* @Copyright: 2013 www.example.com Inc. All rights reserved.
* @version V1.0  
*/
package com.erp.action;

import org.apache.log4j.Logger;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;

import com.alibaba.fastjson.JSON;
import com.erp.model.Permission;
import com.erp.service.FunctionService;
import com.erp.util.Constants;
import com.erp.viewModel.Json;
import com.opensymphony.xwork2.ModelDriven;

/**
 * 类功能说明 TODO:程式管理action
 * 类修改者
 * 修改日期
 * 修改说明
 * <p>Title: FunctionAction.java</p>
 * <p>Description:福产流通科技</p>
 * <p>Copyright: Copyright (c) 2006</p>
 * <p>Company:福产流通科技有限公司</p>
 * @author lsy 756514656@qq.com
 * @date 2013-5-9 下午1:50:56
 * @version V1.0
 */
@Namespace("/function")
@Action(value = "functionAction")
public class FunctionAction extends BaseAction implements ModelDriven<Permission>
{
	private static final Logger logger = Logger.getLogger(FunctionAction.class);
	private static final long serialVersionUID = -834064728613242979L;
	private FunctionService functionService;
	private Permission permission;
	private Integer id;
	
	public Permission getPermission()
	{
		return permission;
	}
	public void setPermission(Permission permission )
	{
		this.permission = permission;
	}
	public Integer getId()
	{
		return id;
	}
	public void setId(Integer id )
	{
		this.id = id;
	}
	
	public void setFunctionService(FunctionService functionService )
	{
		this.functionService = functionService;
	}
	/**  
	* 函数功能说明 TODO:持久化程式实体
	* Administrator修改者名字
	* 2013-5-10修改日期
	* 修改内容
	* @Title: persistenceFunction 
	* @Description: 
	* @param @return
	* @param @throws Exception    设定文件 
	* @return String    返回类型 
	* @throws 
	*/
	public String persistenceFunction() throws Exception
	{
		Json json=new Json();
		if (functionService.persistenceFunction(JSON.parseArray(updated, Permission.class))) {
			logger.debug("持久化信息！");
			json.setStatus(true);
			json.setMessage(Constants.POST_DATA_SUCCESS);
		}else {
			json.setMessage(Constants.POST_DATA_FAIL);
		}
		OutputJson(json);
		return null;
	}
	
	/**  
	* 函数功能说明 TODO:弹出框编辑function
	* Administrator修改者名字
	* 2013-6-14修改日期
	* 修改内容
	* @Title: persistenceFunctionDig 
	* @Description:
	* @param @return
	* @param @throws Exception    设定文件 
	* @return String    返回类型 
	* @throws 
	*/
	public String persistenceFunctionDig() throws Exception
	{
		OutputJson(getMessage(functionService.persistenceFunction(getModel())),Constants.TEXT_TYPE_PLAIN);
		return null;
	}
	/**  
	* 函数功能说明 TODO:删除程式
	* Administrator修改者名字
	* 2013-5-10修改日期
	* 修改内容
	* @Title: delFunction 
	* @Description: 
	* @param @return
	* @param @throws Exception    设定文件 
	* @return String    返回类型 
	* @throws 
	*/
	
	public String delFunction() throws Exception
	{
		Json json=new Json();
		if (functionService.delFunction(id)) {
			json.setStatus(true);
			json.setMessage(Constants.POST_DATA_SUCCESS);
		}else {
			json.setMessage(Constants.POST_DATA_FAIL+Constants.IS_EXT_SUBMENU);
		}
		OutputJson(json);
		return null;
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
		OutputJson(functionService.findAllFunctionList(id));
		return null;
	}
	
	/**  
	* 函数功能说明 TODO:查询所有程式
	* Administrator修改者名字
	* 2013-6-14修改日期
	* 修改内容
	* @Title: findAllFunctionLists 
	* @Description: 
	* @param @return
	* @param @throws Exception    设定文件 
	* @return String    返回类型 
	* @throws 
	*/
	public String findAllFunctionLists() throws Exception
	{
		OutputJson(functionService.findAllFunctionList());
		return null;
	}
	
	public Permission getModel()
	{
		if (null==permission)
		{
			permission=new Permission();
		}
		return permission;
	}
}
