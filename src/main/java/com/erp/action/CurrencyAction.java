package com.erp.action;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.springframework.beans.factory.annotation.Autowired;

import com.erp.service.CurrencyService;

@Namespace("/currency")
@Action(value = "currencyAction")
public class CurrencyAction extends BaseAction
{
	private static final long serialVersionUID = -8036970315807711701L;
	private CurrencyService currencyService;
	@Autowired
	public void setCurrencyService(CurrencyService currencyService )
	{
		this.currencyService = currencyService;
	}
	
	/**  
	* 函数功能说明 
	* Administrator修改者名字
	* 2013-6-25修改日期
	* 修改内容
	* @Title: findCurrencyList 
	* @Description: TODO:查询币别
	* @param @return
	* @param @throws Exception    设定文件 
	* @return String    返回类型 
	* @throws 
	*/
	public String findCurrencyList() throws Exception
	{
		OutputJson(currencyService.findCurrencyList());
		return null;
	}
}
