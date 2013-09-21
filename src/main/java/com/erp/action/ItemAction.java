package com.erp.action;

import java.util.HashMap;
import java.util.Map;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.springframework.beans.factory.annotation.Autowired;

import com.erp.model.Item;
import com.erp.service.ItemService;
import com.erp.util.Constants;
import com.erp.util.PageUtil;
import com.erp.viewModel.GridModel;
import com.opensymphony.xwork2.ModelDriven;

@Namespace("/item")
@Action(value = "itemAction")
public class ItemAction extends BaseAction implements ModelDriven<Item>
{	
	private static final long serialVersionUID = -5649548096030365832L;
	private ItemService itemService;
	private Item item;
	private Integer suplierId;
	
	public Integer getSuplierId()
	{
		return suplierId;
	}

	public void setSuplierId(Integer suplierId )
	{
		this.suplierId = suplierId;
	}

	@Autowired
	public void setItemService(ItemService itemService )
	{
		this.itemService = itemService;
	}
	
	public Item getItem()
	{
		return item;
	}
	public void setItem(Item item )
	{
		this.item = item;
	}
	
	/**  
	* 函数功能说明
	* Administrator修改者名字
	* 2013-7-2修改日期
	* 修改内容
	* @Title: findItemByMyid 
	* @Description: TODO:根据myid查询商品
	* @param @return
	* @param @throws Exception    设定文件 
	* @return String    返回类型 
	* @throws 
	*/
	public String findItemByMyid() throws Exception
	{
		OutputJson(itemService.findItemByMyid(getModel().getMyid(),suplierId));
		return null;
	}
	
	/**  
	* 函数功能说明
	* Administrator修改者名字
	* 2013-6-27修改日期
	* 修改内容
	* @Title: findBrandList 
	* @Description: TODO:查询品牌
	* @param @return
	* @param @throws Exception    设定文件 
	* @return String    返回类型 
	* @throws 
	*/
	public String findBrandList() throws Exception{
		OutputJson(itemService.findBrandList());
		return null;
	}
	
	/**  
	* 函数功能说明 
	* Administrator修改者名字
	* 2013-6-27修改日期
	* 修改内容
	* @Title: addBrands 
	* @Description: TODO:增加品牌
	* @param @return
	* @param @throws Exception    设定文件 
	* @return String    返回类型 
	* @throws 
	*/
	public String addBrands() throws Exception
	{
		OutputJson(getMessage(itemService.addBrands(getModel().getName())));
		return null;
	}
	/**  
	* 函数功能说明 
	* Administrator修改者名字
	* 2013-6-27修改日期
	* 修改内容
	* @Title: findItemList 
	* @Description: TODO:查询商品列表
	* @param @return
	* @param @throws Exception    设定文件 
	* @return String    返回类型 
	* @throws 
	*/
	public String findItemList() throws Exception
	{
		Map<String, Object> map=new HashMap<String, Object>();
		if (null!=searchValue&&!"".equals(searchValue))
		{
			map.put(searchName, Constants.GET_SQL_LIKE+searchValue+Constants.GET_SQL_LIKE);
		}
		PageUtil pageUtil=new PageUtil(page, rows, searchAnds, searchColumnNames, searchConditions, searchVals);
		GridModel gridModel=new GridModel();
		gridModel.setRows(itemService.findItemList(map, pageUtil));
		gridModel.setTotal(itemService.getCount(map,pageUtil));
		OutputJson(gridModel);
		return null;
	}
	
	/**  
	* 函数功能说明 
	* Administrator修改者名字
	* 2013-6-27修改日期
	* 修改内容
	* @Title: persistenceItem 
	* @Description: TODO:持久化item
	* @param @return
	* @param @throws Exception    设定文件 
	* @return String    返回类型 
	* @throws 
	*/
	public String persistenceItem() throws Exception
	{
		OutputJson(getMessage(itemService.persistenceItem(getModel())),Constants.TEXT_TYPE_PLAIN);
		return null;
	}
	
	/**  
	* 函数功能说明 
	* Administrator修改者名字
	* 2013-6-27修改日期
	* 修改内容
	* @Title: delItem 
	* @Description: TODO:删除ITem
	* @param @return
	* @param @throws Exception    设定文件 
	* @return String    返回类型 
	* @throws 
	*/
	public String delItem() throws Exception
	{
		OutputJson(getMessage(itemService.delItem(getModel().getItemId())));
		return null;
	}
	
	public Item getModel()
	{
		if (null==item)
		{
			item=new Item();
		}
		return item;
	}
}
