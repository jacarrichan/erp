package com.erp.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.springframework.beans.factory.annotation.Autowired;

import com.alibaba.fastjson.JSON;
import com.erp.model.Parameter;
import com.erp.service.SystemParameterService;

@Namespace("/systemParameter")
@Action(value = "systemParameterAction")
public class SystemParameterAction extends BaseAction
{
	private static final long serialVersionUID = -6666601833262807698L;
	private SystemParameterService systemParameterService;
	private String type;
	
	public String getType()
	{
		return type;
	}
	public void setType(String type )
	{
		this.type = type;
	}
	@Autowired
	public void setSystemParameterService(SystemParameterService systemParameterService )
	{
		this.systemParameterService = systemParameterService;
	}
	
	public String persistenceCompanyInfo() throws Exception {
		Map<String, List<Parameter>> map=new HashMap<String, List<Parameter>>();
		map.put("addList", JSON.parseArray(inserted, Parameter.class));
		map.put("updList", JSON.parseArray(updated, Parameter.class));
		map.put("delList", JSON.parseArray(deleted, Parameter.class));
		OutputJson(getMessage(systemParameterService.persistenceParameter(map)));
		return null;
	}
	public String findParameterList() throws Exception
	{
		OutputJson(systemParameterService.findParameterList(type));
		return null;
	}
}
