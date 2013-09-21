package com.erp.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;

import com.alibaba.fastjson.JSON;
import com.erp.viewModel.Json;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 类功能说明 TODO:基类action
 * 类修改者	修改日期
 * 修改说明
 * <p>Title: BaseAction.java</p>
 * <p>Description:福产流通科技</p>
 * <p>Copyright: Copyright (c) 2012</p>
 * <p>Company:福产流通科技</p>
 * @author shouyin 756514656@qq.com
 * @date 2013-4-19 上午08:18:21
 * @version V1.0
 */
@ParentPackage("default-package")
@Namespace("/")
public class BaseAction extends ActionSupport
{
	private static final long	serialVersionUID	= 7493364888065600947L;
	public String searchName;
	public String searchValue;
	public String inserted;
	public String updated;
	public String deleted;
	public Integer page;
	public Integer rows;
	public String searchAnds;
	public String searchColumnNames;
	public String searchConditions;
	public String searchVals;
	public String getSearchName()
	{
		return searchName;
	}
	public void setSearchName(String searchName )
	{
		this.searchName = searchName;
	}
	public String getSearchValue()
	{
		return searchValue;
	}
	public void setSearchValue(String searchValue )
	{
		this.searchValue = searchValue;
	}
	public String getInserted()
	{
		return inserted;
	}
	public void setInserted(String inserted )
	{
		this.inserted = inserted;
	}
	public String getUpdated()
	{
		return updated;
	}
	public void setUpdated(String updated )
	{
		this.updated = updated;
	}
	public String getDeleted()
	{
		return deleted;
	}
	public void setDeleted(String deleted )
	{
		this.deleted = deleted;
	}
	public Integer getPage()
	{
		return page;
	}
	public void setPage(Integer page )
	{
		this.page = page;
	}
	public Integer getRows()
	{
		return rows;
	}
	public void setRows(Integer rows )
	{
		this.rows = rows;
	}
	public String getSearchAnds()
	{
		return searchAnds;
	}
	public void setSearchAnds(String searchAnds )
	{
		this.searchAnds = searchAnds;
	}
	public String getSearchColumnNames()
	{
		return searchColumnNames;
	}
	public void setSearchColumnNames(String searchColumnNames )
	{
		this.searchColumnNames = searchColumnNames;
	}
	public String getSearchConditions()
	{
		return searchConditions;
	}
	public void setSearchConditions(String searchConditions )
	{
		this.searchConditions = searchConditions;
	}
	public String getSearchVals()
	{
		return searchVals;
	}
	public void setSearchVals(String searchVals )
	{
		this.searchVals = searchVals;
	}
	public void OutputJson(Object object) {
		PrintWriter out = null;
		HttpServletResponse httpServletResponse = ServletActionContext.getResponse();
		httpServletResponse.setContentType("application/json");
		httpServletResponse.setCharacterEncoding("utf-8");
		String json=null;
		try {
			out = httpServletResponse.getWriter();
			json = JSON.toJSONStringWithDateFormat(object, "yyyy-MM-dd HH:mm:ss");
		} catch (IOException e) {
			e.printStackTrace();
		}
		out.print(json);
		out.close();
	}
	public void OutputJson(Object object,String type) {
		PrintWriter out = null;
		HttpServletResponse httpServletResponse = ServletActionContext.getResponse();
		httpServletResponse.setContentType(type);
		httpServletResponse.setCharacterEncoding("utf-8");
		String json=null;
		try {
			out = httpServletResponse.getWriter();
			json = JSON.toJSONStringWithDateFormat(object, "yyyy-MM-dd HH:mm:ss");
		} catch (IOException e) {
			e.printStackTrace();
		}
		out.print(json);
		out.close();
	}
	
	public Json getMessage(boolean flag)
	{
		Json json=new Json();
		if (flag) {
			json.setStatus(true);
			json.setMessage("数据更新成功！");
		}else {
			json.setMessage("提交失败了！");
		}
		return json;
	}
	
}
