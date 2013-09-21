package com.erp.action;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.springframework.beans.factory.annotation.Autowired;

import com.erp.model.Warehouse;
import com.erp.service.WarehouseService;
import com.opensymphony.xwork2.ModelDriven;

@Namespace("/warehouse")
@Action(value = "warehouseAction")
public class WarehouseAction extends BaseAction implements ModelDriven<Warehouse>
{
	private static final long serialVersionUID = -4202679640252934032L;
	private Warehouse warehouse;
	private WarehouseService warehouseService;
	@Autowired
	public void setWarehouseService(WarehouseService warehouseService )
	{
		this.warehouseService = warehouseService;
	}

	public Warehouse getWarehouse()
	{
		return warehouse;
	}

	public void setWarehouse(Warehouse warehouse )
	{
		this.warehouse = warehouse;
	}
	
	/**  
	* 函数功能说明
	* Administrator修改者名字
	* 2013-7-1修改日期
	* 修改内容
	* @Title: findWarehouseListCombobox 
	* @Description: TODO:查询所有仓库下拉框格式
	* @param @return
	* @param @throws Exception    设定文件 
	* @return String    返回类型 
	* @throws 
	*/
	public String findWarehouseListCombobox() throws Exception
	{
		OutputJson(warehouseService.findWarehouseListCombobox());
		return null;
	}

	public Warehouse getModel()
	{
		if (null==warehouse)
		{
			warehouse=new Warehouse();
		}
		return warehouse;
	}

}
