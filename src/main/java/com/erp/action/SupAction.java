package com.erp.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.springframework.beans.factory.annotation.Autowired;

import com.alibaba.fastjson.JSON;
import com.erp.model.Suplier;
import com.erp.model.SuplierContact;
import com.erp.service.SupService;
import com.erp.util.Constants;
import com.erp.util.PageUtil;
import com.erp.viewModel.GridModel;
import com.opensymphony.xwork2.ModelDriven;
@Namespace("/sup")
@Action(value = "supAction")
public class SupAction extends BaseAction implements ModelDriven<Suplier>
{
	private static final long serialVersionUID = -1687326503418955787L;
	private Suplier suplier;
	private SupService  supService;
	
	public Suplier getSuplier()
	{
		return suplier;
	}

	public void setSuplier(Suplier suplier )
	{
		this.suplier = suplier;
	}

	@Autowired
	public void setSupService(SupService supService )
	{
		this.supService = supService;
	}

	/**  
	* 函数功能说明 
	* Administrator修改者名字
	* 2013-6-26修改日期
	* 修改内容
	* @Title: findSuplierContactList 
	* @Description: TODO:查询供应商联系人
	* @param @return
	* @param @throws Exception    设定文件 
	* @return String    返回类型 
	* @throws 
	*/
	public String findSuplierContactList() throws Exception
	{
		GridModel gridModel=new GridModel();
		gridModel.setRows(supService.findSuplierContactList(getModel().getSuplierId()));
		gridModel.setTotal(null);
		OutputJson(gridModel);
		return null;
	}
	
	/**  
	* 函数功能说明
	* Administrator修改者名字
	* 2013-7-1修改日期
	* 修改内容
	* @Title: findSuplierContactListCombobox 
	* @Description: TODO:查询供应商联系人下拉框格式
	* @param @return
	* @param @throws Exception    设定文件 
	* @return String    返回类型 
	* @throws 
	*/
	public String findSuplierContactListCombobox() throws Exception
	{
		OutputJson(supService.findSuplierContactList(getModel().getSuplierId()));
		return null;
	}
	/**  
	* 函数功能说明 
	* Administrator修改者名字
	* 2013-6-26修改日期
	* 修改内容
	* @Title: findSuplierList 
	* @Description: TODO:查询所有客户列表
	* @param @return
	* @param @throws Exception    设定文件 
	* @return String    返回类型 
	* @throws 
	*/
	public String findSuplierList() throws Exception
	{
		Map<String, Object> map=new HashMap<String, Object>();
		if (null!=searchValue&&!"".equals(searchValue))
		{
			map.put(searchName, Constants.GET_SQL_LIKE+searchValue+Constants.GET_SQL_LIKE);
		}
		PageUtil pageUtil=new PageUtil(page, rows, searchAnds, searchColumnNames, searchConditions, searchVals);
		GridModel gridModel=new GridModel();
		gridModel.setRows(supService.findSuplierList(map, pageUtil));
		gridModel.setTotal(supService.getCount(map,pageUtil));
		OutputJson(gridModel);
		return null;
	}
	
	/**  
	* 函数功能说明 
	* Administrator修改者名字
	* 2013-7-1修改日期
	* 修改内容
	* @Title: findSuplierListNoPage 
	* @Description: TODO:无分页查询所有供应商
	* @param @return
	* @param @throws Exception    设定文件 
	* @return String    返回类型 
	* @throws 
	*/
	public String findSuplierListNoPage() throws Exception
	{
		Map<String, Object> map=new HashMap<String, Object>();
		if (null!=searchValue&&!"".equals(searchValue))
		{
			map.put(searchName, Constants.GET_SQL_LIKE+searchValue+Constants.GET_SQL_LIKE);
		}
		PageUtil pageUtil=new PageUtil(page, rows, searchAnds, searchColumnNames, searchConditions, searchVals);
		GridModel gridModel=new GridModel();
		gridModel.setRows(supService.findSuplierListNoPage(map, pageUtil));
		gridModel.setTotal(null);
		OutputJson(gridModel);
		return super.execute();
	}
	/**  
	* 函数功能说明
	* Administrator修改者名字
	* 2013-6-24修改日期
	* 修改内容
	* @Title: persistenceSuplier 
	* @Description: TODO:持久化Suplier
	* @param @return
	* @param @throws Exception    设定文件 
	* @return String    返回类型 
	* @throws 
	*/
	public String persistenceSuplier() throws Exception
	{
		Map<String, List<SuplierContact>> map=new HashMap<String, List<SuplierContact>>();
		if (inserted!=null&&!"".equals(inserted))
		{
			map.put("addList", JSON.parseArray(inserted, SuplierContact.class));
		}
		if (updated!=null&&!"".equals(updated))
		{
			map.put("updList", JSON.parseArray(updated, SuplierContact.class));
		}
		if (deleted!=null&&!"".equals(deleted))
		{
			map.put("delList", JSON.parseArray(deleted, SuplierContact.class));
		}
		OutputJson(getMessage(supService.persistenceSuplier(getModel(),map)),Constants.TEXT_TYPE_PLAIN);
		return null;
	}
	
	/**  
	* 函数功能说明 
	* Administrator修改者名字
	* 2013-6-26修改日期
	* 修改内容
	* @Title: delSuplier 
	* @Description: TODO:删除Suplier
	* @param @return
	* @param @throws Exception    设定文件 
	* @return String    返回类型 
	* @throws 
	*/
	public String delSuplier() throws Exception
	{
		OutputJson(getMessage(supService.delSuplier(getModel().getSuplierId())));
		return null;
	}
	
	public Suplier getModel()
	{
		if (null==suplier)
		{
			suplier=new Suplier();
		}
		return suplier;
	}

}
