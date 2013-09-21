package com.erp.action;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.springframework.beans.factory.annotation.Autowired;

import com.erp.model.Organization;
import com.erp.service.OrganizationService;
import com.erp.util.Constants;
import com.erp.viewModel.Json;
import com.opensymphony.xwork2.ModelDriven;

/**
* 类功能说明 TODO:组织action
* 类修改者
* 修改日期
* 修改说明
* <p>Title: OrganizationAction.java</p>
* <p>Description:福产流通科技</p>
* <p>Copyright: Copyright (c) 2006</p>
* <p>Company:福产流通科技有限公司</p>
* @author lsy 756514656@qq.com
* @date 2013-5-29 上午11:20:45
* @version V1.0
*/

@Namespace("/orgz")
@Action(value = "organizationAction")
public class OrganizationAction extends BaseAction implements ModelDriven<Organization>
{
	private static final long serialVersionUID = -4604242185439314975L;
	private OrganizationService organizationService;
	private Integer id;
	private Organization organization;
	public Integer getId()
	{
		return id;
	}

	public void setId(Integer id )
	{
		this.id = id;
	}

	public Organization getOrganization()
	{
		return organization;
	}

	public void setOrganization(Organization organization )
	{
		this.organization = organization;
	}

	@Autowired
	public void setOrganizationService(OrganizationService organizationService )
	{
		this.organizationService = organizationService;
	}
	
	/**  
	* 函数功能说明 TODO:查询所有组织
	* Administrator修改者名字
	* 2013-5-29修改日期
	* 修改内容
	* @Title: findOrganizationList 
	* @Description: 
	* @param @return
	* @param @throws Exception    设定文件 
	* @return String    返回类型 
	* @throws Exception
	*/
	public String findOrganizationList() throws Exception
	{
		OutputJson(organizationService.findOrganizationList());
		return null;
	}
	
	/**  
	* 函数功能说明 TODO:按节点查询所有组织
	* Administrator修改者名字
	* 2013-6-14修改日期
	* 修改内容
	* @Title: findOrganizationListTreeGrid 
	* @Description: 
	* @param @return
	* @param @throws Exception    设定文件 
	* @return String    返回类型 
	* @throws 
	*/
	public String findOrganizationListTreeGrid() throws Exception
	{
		OutputJson(organizationService.findOrganizationList(id));
		return null;
	}
	
	/**  
	* 函数功能说明 TODO:持久化组织
	* Administrator修改者名字
	* 2013-6-14修改日期
	* 修改内容
	* @Title: persistenceOrganization 
	* @Description: 
	* @param @return
	* @param @throws Exception    设定文件 
	* @return String    返回类型 
	* @throws 
	*/
	public String persistenceOrganization() throws Exception
	{
		OutputJson(getMessage(organizationService.persistenceOrganization(getModel())), Constants.TEXT_TYPE_PLAIN);
		return null;
	}
	
	/**  
	* 函数功能说明 TODO:删除Organization
	* Administrator修改者名字
	* 2013-6-14修改日期
	* 修改内容
	* @Title: delOrganization 
	* @Description: 
	* @param @return
	* @param @throws Exception    设定文件 
	* @return String    返回类型 
	* @throws 
	*/
	public String delOrganization() throws Exception
	{
		Json json=new Json();
		if (organizationService.delOrganization(id)){
			json.setStatus(true);
			json.setMessage(Constants.POST_DATA_SUCCESS);
		}else {
			json.setMessage(Constants.POST_DATA_FAIL+Constants.IS_EXT_SUBMENU);
		}
		OutputJson(json);
		return null;
	}
	public Organization getModel()
	{
		if(null==organization){
			organization=new Organization();
		}
		return organization;
	}
}
