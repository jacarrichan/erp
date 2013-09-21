package com.erp.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.springframework.beans.factory.annotation.Autowired;

import com.alibaba.fastjson.JSON;
import com.erp.model.OrderPurchase;
import com.erp.model.OrderPurchaseLine;
import com.erp.service.OrderPurchaseService;
import com.erp.util.Constants;
import com.erp.util.PageUtil;
import com.erp.viewModel.GridModel;
import com.opensymphony.xwork2.ModelDriven;

@Namespace("/orderPurchase")
@Action(value = "orderPurchaseAction")
public class OrderPurchaseAction extends BaseAction implements ModelDriven<OrderPurchase>
{
	private static final long serialVersionUID = 1635368739863491430L;
	private OrderPurchaseService orderPurchaseService;
	private OrderPurchase orderPurchase;
	
	public OrderPurchase getOrderPurchase()
	{
		return orderPurchase;
	}

	public void setOrderPurchase(OrderPurchase orderPurchase )
	{
		this.orderPurchase = orderPurchase;
	}

	@Autowired
	public void setOrderPurchaseService(OrderPurchaseService orderPurchaseService )
	{
		this.orderPurchaseService = orderPurchaseService;
	}
	
	/**  
	* 函数功能说明 
	* Administrator修改者名字
	* 2013-7-1修改日期
	* 修改内容
	* @Title: findPurchaseOrderLineList 
	* @Description: TODO:查询采购单明细
	* @param @return
	* @param @throws Exception    设定文件 
	* @return String    返回类型 
	* @throws 
	*/
	public String findPurchaseOrderLineList() throws Exception
	{
		GridModel gridModel=new GridModel();
		gridModel.setRows(orderPurchaseService.findPurchaseOrderLineList(getModel().getOrderPurchaseId()));
		gridModel.setTotal(null);
		OutputJson(gridModel);
		return null;
	}
	
	
	public String findPurchaseOrderList() throws Exception
	{
		Map<String, Object> map=new HashMap<String, Object>();
		if (null!=searchValue&&!"".equals(searchValue))
		{
			map.put(getSearchName(), Constants.GET_SQL_LIKE+searchValue+Constants.GET_SQL_LIKE);
		}
		PageUtil pageUtil=new PageUtil(page, rows, searchAnds, searchColumnNames, searchConditions, searchVals);
		GridModel gridModel=new GridModel();
		gridModel.setRows(orderPurchaseService.findPurchaseOrderList(map, pageUtil));
		gridModel.setTotal(orderPurchaseService.getCount(map,pageUtil));
		OutputJson(gridModel);
		return null;
	}
	/**  
	* 函数功能说明 
	* Administrator修改者名字
	* 2013-7-1修改日期
	* 修改内容
	* @Title: persistenceOrderPurchase 
	* @Description: TODO:持久化采购单
	* @param @return
	* @param @throws Exception    设定文件 
	* @return String    返回类型 
	* @throws 
	*/
	public String persistenceOrderPurchase() throws Exception
	{
		Map<String, List<OrderPurchaseLine>> map=new HashMap<String, List<OrderPurchaseLine>>();
		if (inserted!=null&&!"".equals(inserted))
		{
			map.put("addList", JSON.parseArray(inserted, OrderPurchaseLine.class));
		}
		if (updated!=null&&!"".equals(updated))
		{
			map.put("updList", JSON.parseArray(updated, OrderPurchaseLine.class));
		}
		if (deleted!=null&&!"".equals(deleted))
		{
			map.put("delList", JSON.parseArray(deleted, OrderPurchaseLine.class));
		}
		OutputJson(getMessage(orderPurchaseService.persistenceOrderPurchase(getModel(), map)),Constants.TEXT_TYPE_PLAIN);
		return null;
	}
	
	/**  
	* 函数功能说明 
	* Administrator修改者名字
	* 2013-7-1修改日期
	* 修改内容
	* @Title: delOrderPurchase 
	* @Description: TODO:删除采购单
	* @param @return
	* @param @throws Exception    设定文件 
	* @return String    返回类型 
	* @throws 
	*/
	public String delOrderPurchase() throws Exception
	{
		OutputJson(getMessage(orderPurchaseService.delOrderPurchase(getModel().getOrderPurchaseId())));
		return null;
	}
	
	public OrderPurchase getModel()
	{
		if (null==orderPurchase)
		{
			orderPurchase=new OrderPurchase();
		}
		return orderPurchase;
	}
}
