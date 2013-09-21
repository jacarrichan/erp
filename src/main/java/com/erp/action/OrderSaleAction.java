package com.erp.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.springframework.beans.factory.annotation.Autowired;

import com.alibaba.fastjson.JSON;
import com.erp.model.OrderSale;
import com.erp.model.OrderSaleLine;
import com.erp.service.OrderSaleService;
import com.erp.util.Constants;
import com.erp.util.PageUtil;
import com.erp.viewModel.GridModel;
import com.opensymphony.xwork2.ModelDriven;

@Namespace("/orderSale")
@Action(value = "orderSaleAction")
public class OrderSaleAction extends BaseAction implements ModelDriven<OrderSale>
{
	private static final long serialVersionUID = -7570327381936186436L;
	private OrderSaleService orderSaleService;
	private OrderSale orderSale;
	
	public OrderSale getOrderSale()
	{
		return orderSale;
	}
	public void setOrderSale(OrderSale orderSale )
	{
		this.orderSale = orderSale;
	}
	@Autowired
	public void setOrderSaleService(OrderSaleService orderSaleService )
	{
		this.orderSaleService = orderSaleService;
	}
	/**  
	* 函数功能说明 
	* Administrator修改者名字
	* 2013-7-8修改日期
	* 修改内容
	* @Title: findOrderSaleLineList 
	* @Description: TODO:查询客户订单明细
	* @param @return
	* @param @throws Exception    设定文件 
	* @return String    返回类型 
	* @throws 
	*/
	public String findOrderSaleLineList() throws Exception
	{
		GridModel gridModel=new GridModel();
		gridModel.setRows(orderSaleService.findOrderSaleLineList(getModel().getOrderSaleId()));
		gridModel.setTotal(null);
		OutputJson(gridModel);
		return null;
	}
	
	
	/**  
	* 函数功能说明 
	* Administrator修改者名字
	* 2013-7-8修改日期
	* 修改内容
	* @Title: findOrderSaleList 
	* @Description: TODO:查询客户订单
	* @param @return
	* @param @throws Exception    设定文件 
	* @return String    返回类型 
	* @throws 
	*/
	public String findOrderSaleList() throws Exception
	{
		Map<String, Object> map=new HashMap<String, Object>();
		if (null!=searchValue&&!"".equals(searchValue))
		{
			map.put(getSearchName(), Constants.GET_SQL_LIKE+searchValue+Constants.GET_SQL_LIKE);
		}
		PageUtil pageUtil=new PageUtil(page, rows, searchAnds, searchColumnNames, searchConditions, searchVals);
		GridModel gridModel=new GridModel();
		gridModel.setRows(orderSaleService.findOrderSaleList(map, pageUtil));
		gridModel.setTotal(orderSaleService.getCount(map,pageUtil));
		OutputJson(gridModel);
		return null;
	}
	
	/**  
	* 函数功能说明
	* Administrator修改者名字
	* 2013-7-8修改日期
	* 修改内容
	* @Title: persistenceOrderSale 
	* @Description: TODO:持久化客户订单
	* @param @return
	* @param @throws Exception    设定文件 
	* @return String    返回类型 
	* @throws 
	*/
	public String persistenceOrderSale() throws Exception
	{
		Map<String, List<OrderSaleLine>> map=new HashMap<String, List<OrderSaleLine>>();
		if (inserted!=null&&!"".equals(inserted))
		{
			map.put("addList", JSON.parseArray(inserted, OrderSaleLine.class));
		}
		if (updated!=null&&!"".equals(updated))
		{
			map.put("updList", JSON.parseArray(updated, OrderSaleLine.class));
		}
		if (deleted!=null&&!"".equals(deleted))
		{
			map.put("delList", JSON.parseArray(deleted, OrderSaleLine.class));
		}
		OutputJson(getMessage(orderSaleService.persistenceOrderSale(getModel(), map)),Constants.TEXT_TYPE_PLAIN);
		return null;
	}
	
	/**  
	* 函数功能说明 
	* Administrator修改者名字
	* 2013-7-8修改日期
	* 修改内容
	* @Title: delOrderSale 
	* @Description: TODO:删除客户订单
	* @param @return
	* @param @throws Exception    设定文件 
	* @return String    返回类型 
	* @throws 
	*/
	public String delOrderSale() throws Exception
	{
		OutputJson(getMessage(orderSaleService.delOrderSale(getModel().getOrderSaleId())));
		return null;
	}
	
	public OrderSale getModel()
	{
		if (null==orderSale)
		{
			orderSale=new OrderSale();
		}
		return orderSale;
	}
}
