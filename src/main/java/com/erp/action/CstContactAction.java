package com.erp.action;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.springframework.beans.factory.annotation.Autowired;

import com.erp.model.CustomerContact;
import com.erp.service.CstContactService;
import com.erp.viewModel.GridModel;
import com.opensymphony.xwork2.ModelDriven;

@Namespace("/cstContact")
@Action(value = "cstContactAction")
public class CstContactAction extends BaseAction implements ModelDriven<CustomerContact>
{
	private static final long serialVersionUID = 5833439394298542947L;
	private CustomerContact customerContact;
	private CstContactService cstContactService;
	
	public CustomerContact getCustomerContact()
	{
		return customerContact;
	}

	public void setCustomerContact(CustomerContact customerContact )
	{
		this.customerContact = customerContact;
	}

	@Autowired
	public void setCstContactService(CstContactService cstContactService )
	{
		this.cstContactService = cstContactService;
	}
	
	/**  
	* 函数功能说明 
	* Administrator修改者名字
	* 2013-6-25修改日期
	* 修改内容
	* @Title: findCustomerContactList 
	* @Description: TODO:查询客户联系人
	* @param @return
	* @param @throws Exception    设定文件 
	* @return String    返回类型 
	* @throws 
	*/
	public String findCustomerContactList() throws Exception
	{
		GridModel gridModel=new GridModel();
		gridModel.setRows(cstContactService.findCustomerContactList(getModel().getCustomerId()));
		gridModel.setTotal(null);
		OutputJson(gridModel);
		return null;
	}
	
	/**  
	* 函数功能说明 
	* Administrator修改者名字
	* 2013-7-9修改日期
	* 修改内容
	* @Title: findCustomerContactListCombobox 
	* @Description: TODO:查询客户联系人
	* @param @return
	* @param @throws Exception    设定文件 
	* @return String    返回类型 
	* @throws 
	*/
	public String findCustomerContactListCombobox() throws Exception
	{
		OutputJson(cstContactService.findCustomerContactList(getModel().getCustomerId()));
		return null;
	}

	public CustomerContact getModel()
	{
		if (null == customerContact)
		{
			customerContact=new CustomerContact();
		}
		return customerContact;
	}
}
